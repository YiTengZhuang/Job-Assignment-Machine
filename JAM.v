module JAM (
    input CLK,
    input RST,
    output reg [2:0] W,
    output reg [2:0] J,
    input [6:0] Cost,
    output reg [3:0] MatchCount,
    output reg [9:0] MinCost,
    output reg Valid );

reg [2:0]order[0:7];
reg [2:0]cs, ns;
reg [9:0]temp_min_cost;
reg [2:0]change_point;
reg [2:0]change_num;
reg [2:0]change_min_pointer;
reg [2:0]change_min_point;
reg [2:0]change_min_num;
reg [15:0]counter;
integer i;

parameter IDLE = 3'd0,
          GET_DATA = 3'd1,
          COMPARE = 3'd2,
          CHANGE = 3'd3,
          INVERSE = 3'd4;

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    cs <= IDLE;
  end
  else begin
    cs <= ns;
  end
end

always@(*)begin
  case(cs)
    IDLE: ns = GET_DATA;
    GET_DATA: begin
      if(W < 3'd7)begin
        ns = GET_DATA;
      end
      else begin
        ns = COMPARE;
      end
    end
    COMPARE: begin
      if(change_min_pointer == 3'd7)begin
        ns = CHANGE;
      end
      else begin
        ns = COMPARE;
      end
    end
    CHANGE: ns = INVERSE;
    INVERSE: ns = GET_DATA;
    default: ns = IDLE;
  endcase
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    for(i=0;i<8;i=i+1)begin
      order[i] <= i;
    end
  end
  else if(cs == CHANGE)begin
    order[change_point] <= change_min_num;
    order[change_min_point] <= change_num;
  end
  else if(cs == INVERSE)begin
    case(change_point)
      3'd5: begin
        order[6] <= order[7];
        order[7] <= order[6];
      end
      3'd4: begin
        order[5] <= order[7];
        order[7] <= order[5];
      end
      3'd3: begin
        order[4] <= order[7];
        order[7] <= order[4];
        order[5] <= order[6];
        order[6] <= order[5];
      end
      3'd2: begin
        order[3] <= order[7];
        order[7] <= order[3];
        order[4] <= order[6];
        order[6] <= order[4];
      end
      3'd1 :begin
        order[2] <= order[7];
        order[7] <= order[2];
        order[3] <= order[6];
        order[6] <= order[3];
        order[5] <= order[4];
        order[4] <= order[5];
      end
      3'd0: begin
        order[1] <= order[7];
        order[7] <= order[1];
        order[2] <= order[6];
        order[6] <= order[2];
        order[5] <= order[3];
        order[3] <= order[5];
      end
    endcase
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    W <= 3'd0;
  end
  else if(cs == GET_DATA)begin
    W <= W + 3'd1;
  end
end

always@(*)begin
  J = order[W];
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    temp_min_cost <= 10'd0; 
  end
  else if(cs == GET_DATA)begin
    temp_min_cost <= temp_min_cost + {3'd0, Cost}; 
  end
  else if(cs == INVERSE)begin
    temp_min_cost <= 10'd0;
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    MatchCount <= 4'd0;
  end
  else if(cs == CHANGE && temp_min_cost < MinCost)begin
    MatchCount <= 4'd1;
  end
  else if(cs == CHANGE && temp_min_cost == MinCost)begin
    MatchCount <= MatchCount + 4'd1;
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    counter <= 16'd0;
  end
  else if(cs == INVERSE) begin
    counter <= counter + 16'd1;
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    MinCost <= 10'd1023; 
  end
  else if(cs == CHANGE && temp_min_cost < MinCost)begin
    MinCost <= temp_min_cost;
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    change_point <= 3'd0;
  end
  else if(cs == GET_DATA && W <= 3'd6 && order[W] < order[W+1])begin
    change_point <= W; 
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    change_num <= 3'd0;
    change_min_pointer <= 3'd0; 
  end	
  else if(W == 3'd7)begin
    change_num <= order[change_point];
    change_min_pointer <= change_point + 3'd1;
  end
  else if(cs == COMPARE && change_min_pointer < 3'd7)begin				
    change_min_pointer <= change_min_pointer + 3'd1;
  end
  else if(cs == INVERSE)begin
    change_min_pointer <= 3'd0;
  end
end

always@(posedge CLK or posedge RST)begin
  if(RST)begin
    change_min_point <= 3'd0;
    change_min_num <= 3'd7;
  end
  else if(cs == COMPARE && order[change_min_pointer] > change_num && order[change_min_pointer] <= change_min_num)begin
    change_min_point <= change_min_pointer;
    change_min_num <= order[change_min_pointer]; 
  end
  else if(cs == INVERSE)begin
    change_min_num <= 3'd7;
  end
end

always@(*)begin
  if(counter == 16'd40320)begin
    Valid = 1'b1;
  end
  else begin
    Valid = 1'b0;
  end
end

endmodule
