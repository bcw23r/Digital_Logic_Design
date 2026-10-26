LIBRARY ieee;
USE ieee.std_logic_1164.all;

--entity
ENTITY mux_8to1 IS
    PORT (
        a,b,c,d,e,f,g,h : IN std_logic;
        ch0,ch1,ch2     : IN std_logic;
        data            : OUT std_logic
    );
END ENTITY mux_8to1;

--architecture
ARCHITECTURE bhv OF mux_8to1 IS
BEGIN
    PROCESS(a,b,c,d,e,f,g,h,ch0,ch1,ch2)
    BEGIN
        IF ch0 = '0' THEN
            IF ch1 = '0' THEN
                IF ch2 = '0' THEN
                    data <= a;   -- 000
                ELSE
                    data <= b;   -- 001
                END IF;
            ELSE
                IF ch2 = '0' THEN
                    data <= c;   -- 010
                ELSE
                    data <= d;   -- 011
                END IF;
            END IF;
        ELSE
            IF ch1 = '0' THEN
                IF ch2 = '0' THEN
                    data <= e;   -- 100
                ELSE
                    data <= f;   -- 101
                END IF;
            ELSE
                IF ch2 = '0' THEN
                    data <= g;   -- 110
                ELSE
                    data <= h;   -- 111
                END IF;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE bhv;