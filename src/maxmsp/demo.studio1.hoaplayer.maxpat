{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64"
		}
,
		"rect" : [ 36.0, 82.0, 1399.0, 774.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.5, 108.0, 74.0, 17.0 ],
					"text" : "open $1, info"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 118.0, 32.5, 17.0 ],
					"text" : "info"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 380.5, 78.0, 108.5, 19.0 ],
					"text" : "t s 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 65,
					"numoutlets" : 65,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 180.0, 240.0, 551.676941, 19.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.times~ @numchannels 64"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 210.0, 67.0, 19.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"id" : "obj-34",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1250.0, 240.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 514.0, 188.5, 70.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[2]",
							"parameter_shortname" : "input level",
							"parameter_type" : 0,
							"parameter_mmin" : -32.0,
							"parameter_mmax" : 32.0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 300.0, 38.0, 19.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 330.0, 75.0, 19.0 ],
					"text" : "prepend gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 460.0, 67.0, 19.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"id" : "obj-30",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 37.0, 490.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 100.0, 70.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[1]",
							"parameter_shortname" : "amount reverb",
							"parameter_type" : 0,
							"parameter_mmin" : -80.0,
							"parameter_mmax" : 12.0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 550.0, 38.0, 19.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 580.0, 75.0, 19.0 ],
					"text" : "prepend gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 17,
					"numoutlets" : 17,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 26.0, 301.0, 104.0, 31.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.times~ @numchannels 16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 108.0, 93.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 78.5, 93.0, 19.0 ],
					"text" : "Additional reverb"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 78.0, 67.0, 19.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 70.0, 108.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 520.0, 78.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 70.0, 138.0, 32.5, 19.0 ],
					"text" : "!= 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 168.0, 50.0, 17.0 ],
					"text" : "mute $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.25, 38.0, 150.0, 31.0 ],
					"text" : "une reverb diffuse, juste sur la composante omni"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x64"
						}
,
						"rect" : [ 116.0, 139.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 87.95166, 75.0, 56.0, 19.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-86",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.95166, 104.0, 252.0, 29.0 ],
									"text" : "source 1 axis G0 -60., source 1 omni G0 3., source 1 prer 95, room 1 reverberance 70"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 129.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-80",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 161.5, 223.0, 31.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "spat.oper @numsources 1 @numspeakers 16"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 264.5, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-87", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 26.0, 118.0, 34.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-79",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 17,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 26.0, 210.0, 104.0, 80.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.spat~ @numsources 1 @numspeakers 16 @numpan 16 @panning hoa3d @decoding null"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 380.0, 67.0, 19.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 26.0, 405.0, 60.0, 19.0 ],
					"text" : "metro 150"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 435.0, 66.0, 17.0 ],
					"text" : "dumplevels"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 64,
					"numoutlets" : 65,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 179.207321, 330.0, 544.146545, 19.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.meter~ @numchannels 64"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 20.0, 67.0, 19.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"items" : [ "harvey.mortuos.excerpt.hoa3d.sn3d.44100.wav", ",", "harvey.mortuos.5minutes.hoa3d.sn3d.44100.wav", ",", "repons.hoa3d.sn3d.44100.wav", ",", "rivas.demo.hoa3d.sn3d.44100.aif", ",", "rivas.jingle1.hoa3d.sn3d.44100.aif", ",", "rivas.jingle2.hoa3d.sn3d.44100.aif", ",", "rivas.jingle3.hoa3d.sn3d.44100.aif", ",", "barrett.hiddenvalues.hoa3d.sn3d.44100.wav", ",", "maresz.sulsegno.hoa3d.sn3d.44100.wav", ",", "gabrieli.hoa3d.sn3d.44100.wav" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 50.0, 420.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 78.5, 374.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 65514, "png", "IBkSG0fBZn....PCIgDQRA..BPM..DfpHX....vJsOM2....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGcibcemn+68VfrWzB.ks7hrrHau6wmHBZaYmWdywDT4MukDmzr8Y1dYRLA0jmclLyDxt8KKNSh5k2LSVddZx1Idl3jIjrkisS7yVMa4jWd4X6ljwwN1VwhjxKZwIhfskk2jZRn1VpaRT266Ot0svEEJ.RPrP.xuezApIwRU2pPAhe0u5W8qDZsVChHhpYCMzPX94muoM84edlHh5LH2sG.DQDQDQTmLFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGDZsVuaOHHhHhHhnNULC0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQDQDQTcfATSDQDQDQ0AFPMQDQDQDUGX.0DQTChVqgVq2sGFkwNlriuF0XzcZEcZtclGa0yI53M5XO57tRik5UkluwMuha8a0d8UZ5E891poQ6n3Fiwss3NY6fZ4wh640NnUrcab2W09bTb2pzqeqdNa0zemr7To2Oq1zcqt+Zc7VowdhZdIhHhnP1+3pPHfPHJ49pW1o2Nk6XqROV8RHDk7EP1ee6L1ceNtuF2e1c5G2u6NcpzzamxNMhab4ttM5xcbeA9VMVha71HVF1ME26UQebWQWdcW+G2iEc5D25qnaGUsmaqVbi031FqQoRe9L51twM9ha6c2GqR+sln+sgZc75NOia4vUk1dpZe9Mt4Yk1FZq19gATSDQ6Pa0efc29KrsignAl39XMx4QsNci9EiU5KMia5Uo.4q0wv1cbF8mi9EyUKfgp8k3w8k7UaYdqlWsa1Ni4JsiJUZ8RkB.Lt4cbSO2w0to3BBM5mWajpzNVG25ln6TX01Fd6F3cby2s6XtZO2psyVQGStO+Jsi5U54Gc6onX.0DQTcnReon6isS0H9B0JErh6uuSUofXqk.9pV1lpV.1U5K1azY0K5z2c7Tq2+1I6ctAyD2xSyb4qYZmjk+JMMp1zsZu91wcDoReloQ79bbqOhaGqq1Q.pZIIX6Lsqmkmpkw93Bzdq1QzpMci6uMVsc3gYnlHhZBh9kJUKKFsRa0gtrdGeUJHlsJ6TUa7F8KdWd4kwJqrBVZok..vBKrPIKGCLv.XhIlH1fBZzq+qTPdKt3hX0UWEKt3hPHDX94mO7wh95RkJERmNM..FbvAQe80GNxQNxVFTc6z1UaWwM9qTPR10i4xkCKszRgqGqzqumd5A24cdmPHDHSlLnu95C81auwNNpzNm0NXqxRc8NsiaZsU+t80jOedrzRKg4latveNt22raGmNcZze+8W1zrd+6BwsrD8yhqrxJX0UWEyM2bkssSzkqLYxfjIShLYxD9YwniuJs8Z0Hzcp6tKQDsKalYlA4xkqhATVuN8oOccOM.LeYzpqtJlYlYZJY3THDn2d6EYylsr6uVn0ZrzRKgKdwKh4medrvBKrkulAGbPL+7y2T1glJk0vkWdYL6rytsGiak95qOze+8iidziFFbnqJkc21kfB2JUZrN2bygEVXArvBKDtSH0ijIShgFZHL3fChgGdXzau81Vu9xNlN0oNUru21H9r5QNxQvHiLRY2ekxDctb4v4N24vbyMGVd4kq44WxjIwwN1wv67c9NQlLYh8yia2OetUAkO6ryF92JxkKWMOVsi2LYxfidzihicrigToRUw06aYP1ZhHh1QxjIiF.Msa0KkRE9uW5RWpoNVyjISIyyZwJqrhd7wGW2au8Vyy2AGbvXWlaDTJU3sUVYE8XiMltu95qotdztLM8zSqWas0JYYxc7zHWNaVhNNUJkdwEWTmMaVcxjIa5qG6u+90m8rmUuxJqDN+iabsawNFZ1aK4Nubm2t22byMWC+um0au8pmZpoZnqydhm3Izm7jmror8SpToziO935UVYkp9YsJs8CCnlHh1gZ2Cn1UqLf5savJW5RWptWGtSluaWJkRO2byoGbvAapq6pzsjISpu268d0qs1Zk8k6sCADtUbGySM0T5zoSuqrdD.5rYyVRf0sSq+ZlK2UKfZs1ryrM6su6u+90W5RWplWu3ts9UtxUziM1XsrsWFe7w0W4JWorwg8eY.0DQTCTmP.01+veqJf5sZbn0M1rgEMC014UzfOiKPzpEX0tYfzQuYCrNtL9F2xcqTkVWa+84latczQdnYcyFXcbYeb2XmUTJUSc4MZ.0tKaSLwD5ToR0xV2O93iWwOSVo.90Zsd5omtkNNc+b28e+2eYimJs8ACnlHh1gX.0k+E214YbAqbkqbE8QO5QaZy2JM+iKf5JE74Zqsld3gGtk+k2ama81au54latJN1a0kCRb6bh81S7DOQayNjD2sSdxSF6xxtwNjzJ9bYzsKFYjQ1UVu2e+8WVoLEc7Y+40VasF9euXmbarwFqr2yha6DdkRjHhn5VbcPD266bm6b3HG4H3hW7hszwkNxI.Ubm7n1e+BW3Bnu95CyN6rszw310pqtJFZngvINwI.PwkM6xPbKiMSUpEkc9yedLv.CzPNgMaVN8oOMRmNMVbwECuOcLmDbc5h18NVe80Q5zow4O+42UFOKu7xnu95Krig3tsq61uKu7xXfAFnk+2Khy4N24BOgqiNVcw.pIhHpgPqKuqXr1Zqg69tuab7iebjOe9cwQWoAWGsEYc7ieb7NdGuic8w31wjSNIdiuw2HxmOeEaGbshNZga.8..4ymGiN5nXzQGsiX83xKuLFZngvLyLSIaSrWIXZfR2Yq0WecjISlcT26nQJe97HSlLkzF9.JNVWZokPlLY1wctilgye9yiLYxD96wsMBCnlHhnFhnY2agEV.uhWwqngzRzpmwTbs9N6+t95qirYyhImbxckw2NkMninAk.fVVPgtyWavZyLyLM84aijcm.lbxIi8nqrWfcGEFd3g20Cl1xMnZfhedblYlACLv.sk6P1BKr.FczQAP76vJCnlHhnFB2L.epScJLzPCg0We8c8wTkxLc974wPCMzt1g+tdYyvpMnjVM65174yi69tu61lf01IN9wONtm64d.vdmx8.nXvziN5nsckfS974wvCOb3ei37m+7guGzt57m+7XhIlH1GiATSDQTCgPHvZqsFFd3gaXWTZp2wSzZ41FL8Zqs1tZvnMJ1L8s5pqVx82pxv55qu9dh0i.lridxSdR.r2Jn5ye9y21tSi1yKfkWdYL93iuaOb1VNwINQI0duECnlHhn5lVqwJqrBFZngZKNQhhJZsFe7ie78DAABTLSet0TcqHfPaF92qrdD.3Lm4LssAetSrxJqz1Gnp8DPrcrLOpDaoe3hATSDQTca0UWECLv.sUG1eaFoidl4epScp8TAMAXBJYzQGM1rxG2+tc4tNz89..xlMaa062MJiN5nX4kWtr0UQ6pJcBVc0U6nBTsSwxKuLld5oC+csVy.pIhHp9kKWt1xu31stoA.le94wYNyY1kGUMGyN6rg02Yzf9bqc7savfQOI8bmlm7jmrs7HQzn3VauQsW6jVj1YN9wOd3OKDBFPMQDQ6MEM3w0We8XOTs6kbhSbBjKWtXyRs8m2I8oZ2m+d4cJwZ0UWEm4LmoiJazTqU974wLyLS31HLfZhHh1SJZeY9zm9zkcx6sWj6EgBfRyNcsHtK7FBgnsuSLznL4jSF1YLhqGqSz4N24..yPMQDQ6SrxJqzw0qo2oVXgEJ6hUhaVo2Ik7gMv5SdxS1VcA2nYydB8EMXZVxGDfoevaOobY.0DQDsmjaPjsCswuVo3Vdcyx71IfvnWN4ymOeXF41uX4kWtrSfUFLM459tu6ik7AQDQ68kKWt8bc0isRtb4JqKDD811ga1XGe7waKOwSa1N0oNUYq2XIePVyM2brjOHhHZuMgPruoTOhxMK06jrp5VpHqs1Z661oDqUWcUL+7yC.TRM4SDf4nXr1Zqw.pIhHZuA2SfN6uCf8zs2spwMPvn8h6saIeXWGteqTOh58+9e+g+LyNME0xKuLCnlHhn8FhFjnPHvRKsz9pShtnN+4OerAOucCJzFD990rSaM6ryF1WpY1oonle94Y.0DQD04J5Ebjnc0hYlYlc2A3trYlYFr95qG6NarUrqSuvEtv95cJwZ+5Q5f1Z4xkiATSDQTmsns1M2RUv1Gg2O6BW3B..wt9oZrOOFHogc8.K4CJpb4xgD61CBhHhH.f96ueLzPCg63NtCLv.C.sViLYxDV5Fqs1ZX4kWFKu7xgGB9nW3QbyV85qudXOhsUo2d6ECO7vHSlLHYxjHSlLHe97XwEWLrllmc1YaocKiEVXgvqPj6jK836FAT6tdr2d6EoSmF4xkCqt5pHWtb6JqGmat4ZYyqVgidzihAGbPLv.Cf96uezSO8fUVYEjKWtv1EXq9yOakgGdX71dauMLv.Cfd6sWbjibDrxJqfUWcUr3hKhG3AdfvyafVo74yCnIhHZGISlLZ.zzt0HnTJsVq0W5RWpoNV2o2xjIidpolRu1ZqE6X2dy82st+6+90268dukrb597ZkKyoRkRO0TSUxXwcL4N1Vas0z268dusrwVu81aIqKiabUoscZ0a2zWe8omd5oi888nuGq0Z8DSLgNYxjsrw2byMWEeucmPoTsz0u.PezidT8JqrRYii3924laNc+82eKeLF81vCOr9IdhmnjwazsQr+6byMmdvAGr0ONaHaQPDQ6Cw.p242xlMaIeodz.Th6KKia4Jtmq81IO4IaIKK82e+krCAwMVhaLt3hKpSkJUKYLtxJqTyAUqTpVZf+iO93wF3bk1Vvc8X5zoaIiwIlXhJtM4NQqNf5omd5XWOF23x0HiLRKcb5d6rm8rU78e2sChdeYylskNNYMTSDQTKyfCNHVbwEwzSOM5s2dA.hsDDhd07y9bzQpCXcjSFQ2Waq3Doq2d6EyO+7HUpTkLNsiC2+08wEBARmNcKqLBh1Gk2tZU0f9zSOMlXhI.PoiwpckczdeoSmFSO8zHYxjM8wY6VIPTKN4IOIFYjQ..J6bN.n7scc+8YlYFL7vC2ZGv.Ha1r33G+3Ub6V2OOE0TSMExlMayb3UBFPMQDQsDSLwDX94mG82e+k7E4a0kB6n8O4p0KkcuuVQ.0SO8zHUpTkELezwSbW1u0ZM5u+9w8du2aSeblKWtR5.JaWsh.HO6YOKFYjQhcGkhJtcNAvDTsMf7loUWc0xFGcB5s2dwoN0ohcGOspT6Uz97aU6zhUu81KN6YOaIWkJiti.a0m2N6YOa3Nt2rw.pIhHpoJYxj3gdnGBiO93UMiR0pnYWy8m0ZcSO6pCN3fXngFprf+pV.gtri2ie7iGlg6lkEVXgRxx+1Y8etb4Z5mzeCO7v33G+3.n1NgIsOefhAVO5ni1zCdZ94muirKebpScJ.D+QCpZbOYeSlLIFarwZBit3M93iid5omX2g6s6e+HUpTgK6MaLfZhHhZZRlLIle94C6ZGMqL6EWlqZ1hFbw1MPZ2muPHPpTovQO5QazCuRr1ZqUyW1ra1Y3OYxjkkU4ZYL59dscceqHfuNsrSmJUpvRevc801k6mas67Sqf8nV3NV2Ii6rYy1RxrNCnlHhnlBavz82e+.n7K5JMBtSO2.cZEkpvwN1wJ42q0Ks2VZstoGP8xKuL.pswUyNC+YylE80We.n7Zfe6t8QzxWXngFpoLVcM2by0Qkk5AGbvR98ZcGace+nUrye.lwbpToJ6nPDW8dWM1.xi9Y0lAFPMQDQMESO8zn+96urxxnQELRkpgZsVGdYhtYISlLkELWsFPnav2sh.AsZWBFbrwFK15iEn12gD6+1e+82zyFYmVFpyjIS3OWKASGWYVnC5M7Ma19OezwwNY6CgPT1NUzLv.pIhHpga7wGGCO7vk8EeMxZnN5zrYLsqDalUsy2c5Xv97aEGR5UVYE.r8Ga1rZ2Lze+8WR1ocCdZ6FvekNozRmNcCe7F27tSg65is5j9Lp31YmVw5W67H53rVKmK2NASyFCnlHhnFpjISF14JhlAxFc8MGW2+Pq0M85+M5I+1NIfvnOulcVzxkKWYA9WMMyr7ayHek1gqsy3ycaK26qYeBdZmOcJ5s2dKa8TsVi5tulVQvo1cvL57tV19vUqXLyK83DQD0PM4jShd5omveOtCybi9DTLZvB1rw1rD8K1iqSerUKe0Z8f1HTK038YO6YQ974is9Uqk.xhqarzau8VwGqVKKA2cXCvD7Ty7xkdy7jqsYnu95K10SaGQeu2dRz1rY6dNtaOTqa+Y0p97ECnlHhnFljISV1ESgJUqyMBQqa4FYMZuUpzxPs9k86jSjwchZc5Ov.CzjFIEEsbMhdeakVYY9XUqA82NHt56uV1gucxILZ8pRaOrS+7UyFCnlHhnFlwGeb.z4kEucKtAsLwDSTRYVTuAtDMidt0kJeuY+gn0lemTopzogATSDQTCS1rY4WZWCby7WiNf2nkSg68wfp2eXfAFfuO2hv.pIhHpgHc5zkz8KnpyM31nA31H1ojn0eJCld+mJU2zbafFOFPMQDQMDCN3f7Kp2AhqtTazmvlUJS0zdewcxeRMdrs4QDQTCwfCNHCRqFToVAVi5D+JtNzPq5DfjZOD8HSDsiYPMNLC0DQD0PX6JDL6m0lJ0ETZTmThVLXp8eh1NI2IsNOZ6gATSDQTCga8SyuzdqEWa9Kt9taiXdXm116y82o89htc.+7YiGK4ChHhpa82e+L6W0nnkhQynbLpT1uaTAq69uw8XQuO2WSkx.ebW8Ci9uU5DsqRy68yhtsEW+zbvLTSDQTcqmd5oltnQP6MUoS9sJsyBU64WsskpTV2IZ2ByPMQDQ0ssa1Go8VhqrUhKPZ6OG8ptm6yOtRRHtW+V0B33NyQ6FXFpIhHpggGR48mpTqYKtdes82ykKGxkKGlat4fPHvRKsT3UJxb4xgUWc0JN+RmNMRkJE.L0t+cbG2Q3ic4Ke4lxxHQUCCnlHhnFBdxNs+RbmPk.wW9EBg.yM2bX94mGKrvBXgEVntl2KszR00qmnFMFPMQDQ0s3NomXf068UsKJMZsFyN6r37m+73hW7hsr4OQ6FX.0DQD0Pv.a1eItKq4..qs1Z3bm6bXxImD4ymuoOFHpc.CnlHhn5VzZkkA5r+f6QiXs0VCSN4j3bm6bM8.oIpcCCnlHhn5Vzx6fk6wdKU6jKD.X94mGiN5nHWtb6hiRh18v1lGQDQDUlp0oNbu+ie7iigFZHFLMsuFyPMQDQDUUwcUHLe97XzQGEyN6r6VCKhZav.pIhHhnpJZKwa80WGCMzPX4kWd2bXQTaCFPMQDQDUlnk2g68eO2y8vfoIxAqgZhHhHppbOQDGe7wYYdPTDLfZhHhHJVQa+gyO+73bm6b6RiFhZew.pIhHhnx31UOzZMxmOOxlM6t6fhn1TLfZhHhHpLQ6k3SLwDX0UWcWZzPT6MFPMQDQDUF2qBh4ymmk5AQUA6xGDQDQTrrAUO4jSxKm3DUELfZhHhHJV1x9XxImbWdjPT6MVxGDQDQTEcgKbAlcZh1BLfZhHhHphN+4O+t8Pfn1drjOHhHhnJZgEVXWadmLYRjISFjNcZjISFjJUJjNcZ.T5IM45quNVZokvJqrBtu669v7yO+t1Xl1ehATSDQDQwZt4lCqu95s746fCNHFarwvwN1w.P4WfYb6Q1..oRkBYxjACN3fX0UWkATSsbLfZhHhHJVs5rS2e+8iImbRL3fCVR.yQ6I1BgnjfrcuznSztAFPMQDQDUFgPzRCndrwFicSDpiEOoDIhHhnX0pJchyd1yhImbxxJsCh5Tv.pIhHhnxrzRK0RlOiLxHX7wGur5hlnNIrjOHhHhnxrxJqzzmG81auXxImrj.oc6dGD0ofATSDQDQkoUjg5SdxShToRUx8w.ooNQrjOHhHhnx7rO6y1Tm9ISlDiN5ngYj1s9oYsTScZXFpIhHhnxzryPc1rYK42caEdLK0TmFlgZhHh5HEMilt8h3Nk.xZlYhUq0wl82nya2mWydL4ZvAGrr4Us9dWzZuN5xBQsJLC0DQD0wxMqltAU2IDTkc7VotaQiXYnZSe2wf67y9ZZ1YnNSlLw99WszsOhdwcoS38cZuIFPMQDQcrbCBy826zD23tdWNhFfbz+MpnkbQy9RNdbmLh0ZP0U5JlHQsZLfZhHh5XUoL61IDXUzKW1MiLramltyq3BtNtGuYxlcZ244NUmzQkf16hATSDQTGonAhFMirs6hq9gs2eiJf13pM5psSHUKC1MRwUa205xbbmDicR0OOs2BCnlHhHZWhaPriO93X4kWtg1oKbCPdhIl.CLv.kk05nyKsV2zK2iJUpF6jclHtKJLD0pw.pIhHpiTkxvK.vPCMDNyYNSqdHUShVxGKu7xX94muoM+rAIGM303BfsYeBI1np64lQV8IZmfsMOhHh5HUofA6TyR4hKtXSc5GWsFWsVOXyT974K69p022baSdtY7tUbEdjnnX.0DQDsmiRoZpS+Ke4KusC.LZ+QNt9k7JqrRrAY1nUsflak0P8RKsTrAsWKy63NoFaEkqBQwgATSDQTGoJcwJQHD3HG4HM04sMKnU5hmRz13W05Cz..KrvBMygK.LcVC24IPkCfsUT9DKt3hwN+q0dPsaMmKDhVx5RhhhATSDQTGqJ0gOZEATmKWtJF7Wzr8VortZe7ye9y2LGtwJ55rJckSrYY4kWtj4+N8ROt6Nrvx8f1sv.pIhHpiU0BFqu95qoNuO8oOcEKgh3xdZkr5pq1TOYDA.RmNcriknY2M5i2LM6ryVxuWqmXgQy7uVqwbyMWCa7QTsfATSDQTGoJUCv1fD6s2dapy+ye9yGlk0JkUWaPeQCVz89ylMaScbB.jLYxpdkXL53umd5ooOlt3EuHVe80iMP5Zs9zALKOu+2+6ugONIZ6fATSDQzdBQy.a5zoa5yyrYyh0We8RBP1NFh6BOSzroe5Se5VRM+N3fCVVPpQuXt3tLzJV2A.LwDST1XpVxTs6yalYlA4xkqQN7HZaiATSDQTGopE7kVqa5YnFvTGvYxjor5A1c7Y+4nkUw3iONN8oOcSeLB.Lv.CTVayKtLTG2IXYyzYNyYJYcWsTxGtu+u95q2xVWRTbX.0DQD0wyMvZavfCMzPsj48xKuLRmNMFczQK4jhqR0j7zSOM5qu9v4N24ZIiOfhYntR0OcbiyVEaV9q0SFR2LpO93iyrSS6p3UJQhHh5HE2kNa26qUU1BVyLyLXlYlA80WeHc5z3Nuy6rjwz7yOOVd4ka48I4zoSiToRAfxameVws9avAGrkTNJ1r7O2byUVsaGcGkhtCABg.iN5n6JcIEhbw.pIhHZOqgGd3x5lDMa4xkC4xkqkOeqjQFYjvetUbQaYmX4kWFCLv.X5omtjirPbA869ZhdTAHZ2BK4ChHh1y5s81da61CgccG8nGM7mqk97r8BASqxpqtJt669tQlLYvzSOMVas0.Po0hdtb4vLyLCFd3gw.CL.CllZavLTSDQzdVCO7v3Dm3D61CicMoSmtj9wcsTmzM693ckrvBKfEVXAbO2y8..Sf8qs1Zgm7hD0NhYnlHhn8jrWwD6u+92sGJ6Z9k9k9kJ691tk7Q6x5MasmST6LFPMQDQ6IYqW3wFarc6gxthjIShQGcT.fJdh8UMoSmFISlroM9HZuDFPMQDQ6YY6BD6GCLztiDtcvinWMIqFgPzxqiZh5Tw.pIhHZOMaeJd+j95quvk4nAPWKW.UFd3gaJiOh1qgATSDQzdV1.IGe7w20NI61Mbu268F1Smq0q.gVZstjNDBQTkw.pIhHZOKavjoRkBSLwD61CmVhAGbvvZmtd0SO8vfpIZafATSDQzdRQK0ggGd387AGlLYRL8zS2vt3sn0ZjMa1Fxzhn8xX.0DQDsmk6UFPsVGdoAeupImbxF5xmPHvvCOL5s2daXSSh1KhATSDQzdZt0ObpTovEtvE1EGMMOiM1XkbYFud41p8N4IOYCa51rkNc5c6g.sODCnlHhn8rbK6Ca1pSmNMlZpo1kGYMVYylESLwDg0L9N4jPLJ2xFIa1rsMWnWplwFar87k0C0dhATSDQzdRwETo89FczQ2yDTc+82Old5oAPwcfnQVC0V14Q6pAGbPL4jS1vV1IpVv.pIhHZOK2KlIV1edzQGssOHwsR1rYwbyMG.Js830HxPczoU5zoaaK8izoSumsTdnNCLfZhHZGpSISX0xka55YdXmOsiqWbW9c+4rYyholZJjJUpcigUcYjQFASO8zHUpTkjY5F86AtSqScpS01cwdIYxjXpolB8zSOsjs0aTZUi0n6L41sjf1oWLfZWD2NS2Lw.pIhn8nZ0A159EtsiAUGkcLZyxamT2+XpolByLyL..kT2zMx.HpTvWSM0TsM0ScxjIw7yOOFXfABuuVw1dMpi.PydrF88uZ4ROOPqKn+3luMpoSqZ7y.pIhncnNgL1zpFicBqKhxsjFRmNMVbwEa6Og15u+9whKtHxlMaIsCv3t7h2HDWfM8zSOX94meWOnZavz1t5Qsj805QiLH3V0ma1oaaDW4R0JFyMx4AyPMQDQMDs5xvnS5vC6FTZxjIwryNKlat4Z656xISlDm7jmDKszRgAP51V6b+8F462wEPkcc0RKsTCsM8UKRmNMVZokP+82eIk5hcL1r0HlGMxSdzsZ939uaWMismZ0Zk+cHFPMQToQlkX...H.jDQAQEsGUkpa3VgNku.1Frf65mLYxfb4xgomd51h.qylMKVZokvoN0o.P4AHEsTOZjYQLtf0c+2omdZb+2+8ijIS1PleaGiM1XgknSi7jvb6pQNuZEYS2cGbqkOWFMq16z.y2IXIePDQ6iztGzXitEpscme.cFk.R0JSBsViQFYDjKWtckZFNYxjX7wGGqrxJkDXua.RwEjay585nAl3tt6XG6XHWtbXrwFqoLus5s2dwktzkvjSNYImHl1wCEu58uAD8H.zJzn5i57jRjHhnNJQu3ozIEfSbAJ5deiN5nXokVBKt3hX7wGuol05idziholZJr95qiIlXhxNQIcyzXz0yQeOndEWo63ttwMy3ISlDSLwD3JW4J3jm7jMz0Q1KDO4xkCCMzPwNNsisNot7QqJXu3NoU2tqihlg6Nk0s.kezTZ5yOcmze0iHhZyToubpc6K1iqFSajkEPs9E0sChKqqQWNpz5sb4xg4laN7vO7CikVZIL+7yWyy+jIShzoSiLYxDdK53yN+hdeVQCJqQ99Pbqeha9To42RKsDtvEt.VXgEvBKrv1d9lLYRLv.CfidzihgGd3vcpH55il8QCoRk7PiZcbkVdbuuF0zuQstpQtNuZKuMp0usx+tDCnlHhHZGHZ.Aqs1ZX4kWFZsF4ymGKszRk7brALKDBL3fC1QsyG0C65fUWcUjKWNn0ZjKWNjKWNHDBze+8G1CoGXfA5H6I3Dw.pIhHhpCwkArpks6NsL4uSUok2VcllIpUfATSDQDsCTsx8wpYTp.cRp00Qt2GQcR3IkHQDQzNPk55EtOVkBTb+Rtrha4MtNUh6ykASSchX.0DQDQ6PaUqBrZAcuegaqsKttRRbO+8iqmnNaLfZhHhn5fa6HaqpW38Sht9nRk9Qz9E79w0UTmOFPMQDQzNPbsTO2eNtRZnUdglncQkt3qToq9h62V+P6Mv.pIhHhpCQCfNZFVi6x179grvVo0G.kuCH6mVuP6Mwt7AQDQDQDUGXFpIhHhHhn5.CnlHhHhHhpCLfZhHhHhHpNv.pIhHhHhn5.CnlHhHhHhpCLfZhHhHhHpNv.pIhHhHhn5Phc6A.QzNmFpfeJ98MVD97r+tJ32sO+Re8hsX5Uro0qBd9bexIhHh32FRDQDQDQ0AdkRjnNX5vLEWoGu56ybzLXisX5UNtO4DQDQ7aCIhHhHhn5.qgZh5nEcehs0HcTpxtG2mWkpEZcY0VMQDQDEEyPMQDQDQDUGXFpIZOkJkQYy8qKq6bTZFsEgOOD6iiHutsesVSDQDs2EyPMQ6WoKdiAFSDQDsywLTSTmLsu4eDdl+E9P.APXy6QCgnX3xZngv9PJsIfZgBvy7XPKgPHL+L.DZg42ClOBQw9XsFZFHNQDQDXayinNZZseP.vNkhgNHnYsFnfFPEDfsVA3aeN.3a8sw0dpmBZsFG5tdyv7hj.dB.YvzyCleNQwfrA.PP.7LfZhHhHlgZh5rI7fBZHCpoYEDPBMfuBXCMv08Ax8j3Y9zKfu6i9X3a8nOFt7i9XP5adMBMLAjK.1TJws7Reo31e8uV7pequYj5G8t.dCuVft8.zdPzkGf.PEVqHvjMbhHhn84XFpIpClFAYIV6axD8l9.apAVKOVY1Kh+tY+Kv28q7H3l2zGI8E3FUZbPMPBAfPogTJgOzPnzPI8vyoU346Rh0EZjuKObv631v+j24OKd4G6sCbKo.5V.3IAjRnELC0DQDQ.LfZh5nosk3gBlLR+TWAO4LeDL+G5CCu0xiCCfCIANnPfDJM77MkChmPC6G8M0HsoufnE.9R.e3gMjB7bJEdVgF5j2Lx7N+Yvs+u9mC3VSBb.OnS3w.pIhHh.CnlnNWZXxLsuozNze1uD9vu2SA8JWF2lu.2rP.gVAQXvyJXarOxfyLwvScwfS9vv1gmVBsv7bKHE3pET36mPfMdkubLx+4SA7icW.GLAPhDrWAQDQz9dLfZh5TogoDOd9B3Ieee.7W8A9f3E5qQOdBbvBZHU9g0HsJrlmUAmDiFBcPemN3OCnEAOtVCgvK7eK.M1vSfq3qw2sKA9e9e+uH5ar2MvMd.ftYD0DQDs+FCnlnNM1yIvBE.dNe7490OEdhO7GG2tB3vRA778gPXZocgAJ6jYZsVCXakdJQX.z.ECnFAuVa.2PXN0Gg1C4SHwJREty+EGCuke6y.bXOfDxhcFDpykFQ5FLQdOUXufAEb+ZkoP50Ry+5A.gjEWOQz9NILYfxoO0576LVapSm611VQ2lucPwqTgQt+f1hmBBHf.Z3CoF.E.vy4ik9k+MvJerYwKSHwggBRsBlx1vCJsIxagH30p0PqDPHjgWwDgLHa0Ak.hLXDXB.W6jw5h8m5aDZ7Jzd3Q+SueH0.u4eqSAbicAc2.Zmwonjd.RoWAFKdkbjAguaRgf9KN7BZ2hJfMU.anLcJlsJfZkOfTXddIj.cCftJVNQgeWRYWgM466DQ6sD117rAYztEnAQ0C610tm.dcxaiKzvbAY44Kf+l26ovJerYwQzRb.kFRkBPVR2hNj6NGq05hW3VDU34Irmrhk93RngnPAjT5A3IwC+w9D3P27Mh2v89q.gGfPl.5N2Uu66X14Gy+IEldVd9G8afG3+36C8rgewO2nQv6qJnD.Rcw.jMedRh051C+z+Fm.I+QdclrTyDxPDsORhYlYFjKWtROLug0PI+lQpylVqQlLYPlLYJ69aG19NZHG5vL3YIgVCHselD.XCMd9+zKhG+id+3NDdnasxzGpkB.HfPXy.r1bEMzFirnXetK7pkXvU.wvLQZOR9AYF2bGBHzZS.RRSVu0ZfaP6g6PIve6T+I3U7leS3Pu8+I.c6a5W0gY5NX9wLR21xbbDBd+UAHel0w5y+EvMsoBdB6ighaTFbW.lOGojBHT.4Of.hmNePRnMWO6it8scRToiHCQD0oJw8ce2Gle942sGGD0T4FPcmZoLIrW4CW4x3S7a89vKyWfaTnfT4Gd30ilQdWUJK8Qyds843deB2eNHHKOeejT3gWZAE9P+FmAuq65MA7RuEftDtwbQswbOdFlcxRgtK3ijWu.dYZOSIDIzNYntbJeMjZAdVsONfuxVqGfaAPDseBSWDsmWz.HamJ6CS0Qqb9caV6jA2rs8NeSMs97ahO+G3ODdqsFtIgFdgYe17brkDhFxf5V075EBaayydKfVBnkPKTAYe1LeMWrXLkAf.JSvTA0asJLnaMDZejTJws7cWCO7+o+K.E7cVVj.kcKX1BFtU6gReewVCPRg4h8SvFTlsOP72D1SnUsFgclbsFP3AAjA2Je65R1NjHh5vw.po87zZcIYtU6D.P6tRB72WC7DWFK9wmE2hPfDZeHBJYinYVdK2gAsDZkask6g39yAwk8Z6Oa6s0cUPgWjOvCdgOIvk+VlSpMecGw5286J4RGeYa6DW.ukFHbzOKoskFTaxNrRDQsJR9kdz9AtkCw1NnyVHaF7rYV1MCtgkbQAE9pef+H7he9B3lf.RsI61RgFR3AI7fB9lrIpzPBQIAJaV1M+tVHAjdPKL+rVW55mhsaufifuMYknXF9s0XsPCbPOfapvl3y86+GA7bELWFzCuPw3jMyvkUI6zCsABO4TgvDHbPmgQA+fyqPe.se3NPEtiTJyMATAW7fB1tQhft9Qoa+TToaGPDQ6UvuQi12vMC0tYptcmo4JH.txZ3ye+O.dgZI7TEKsB2ki3pMZyxp.EjIvU8D36HEHmPg+AgBeCoBOgTgK6A7zdd347jvWXKWjhSS2atq+DBAjPAOsFI8Rfu38+IAdl7.99H99MB0tojrT67VVsVPFgaGFFLMe+mHZ+iDsSYoinlg3xNMP6RIeTo8o0DNiFRHTl9B728ReVbXeMNrTBoRAo6xhyqzrbZClVAgvC9ZIVaSe7TGPftOxcf67GOCRj5lw+n2TZr5i+2iuyi9MvW8uZNbSeumA2pPha.R3oADBEf1zOp0ZMjZuRZGZZ3aVFT93vvC8bsMwy+olGG5m6cD1QpcWNC6+01rlWmq8n5iD5fsQrs+kh4NVq0Aai4YJud.nCO5N1flsuCGj4YEfs8dHQw1ynNx62Q+chHpSWhs9oPTmsp04KZ2og8hsgOd3Oy73PB.O01O2eB3gq6IwSuoB+vWPO3d9stWf+W9wA5NAPBAfDn2L+OfdulFu02yIvJu++a3u97+I31TRjR3AgN3pqHBx9cLyXQPKfvy2G2hF3g+zyg25OyQAzIXDScnLwKyN0AQDscknSLHCZumzoSiToRAfFaOhVq0nu95qrxhncY69n8i2n8qYMB5tGWeS7M9hOH5Cl5RVHDPoKdkMTXuB1E4JamVHwZJM99ujW.tmo9C.R+5ANTBa6ktXLSI.vAtEbj+u90PO24qGW787ahtURbHIfPWH7RPtF9k0egMueoQWZOjTqw23K8kva0WEjESoSFLKdExq8XsOogDZgoISKfe38BHMYkN3h4RX+K240YTZggnDtuyJKa+oJ+0wpNjHZugDyO+7kzg.hdoGmkDx9awcg9ItsWr+6wO9wwjSNYMMOFYjQvLyLSYcphFcf0Q0wrssV.7jeGnW+p3.QW2TkHS0BI1.Zrl1G+Seum.Xf2.vg7fpKY30GOKgTBQBEvA7Pp+4Ci21C+H3Am5CgWpmGNTAyIYVkVeYFGlVn2AUBT3YuJvi83.u46DvSAFzTGjFwGI5P9XEQD0HknZAGAztTmoztos5pmo89ylMKN+4OeMMsO6YOKN9wOdYAoG8m2opVPysG6vXwZkFHlqjb11jv27IQ2E7M0nU3UwPc4WrMbtRH5K.ddsD2Xu2Nt42wOMvgS.HElooPFjb5f1tmvbA4P3Aftk3Hi8KfOyeweNt4qjGGVXB+FBEzAYpVhfSNQgsKoIAzBjPHfmuBW8I+N3lR+FLSPI62vsqDPEyNKY6NK1cDx12nQ3Q.Ib6zR9gn63jpJWQD4NYQDs2hDnzdWKCflhpj1nVLsVsUWcUjNc5ZJX5ToRgKbgKfwGe7pFXazNLQsdK51yQu.uztylE5q+TeWzseP6qaatyt9ByUutW0a4MBzk.HgzDPcLK2BXZycZ..O.bq8f65c7Siq5aBrJtVMX4WvbLuO1sTfbO5iCSr5LX5NFMpq1NgkJBQDs+gIgWU3j1pSHfCp4xs8nEkPHvzSOMNwINAVe8021SyzoSiolZJLv.CTx7w8ei9yMBwk86c+swiuaG3loZAT3JO0SgCBAjB.ncuxyUZlCcyXcAIvU0.u165MC3Yx5XwbFJCZWZAYJLnSOn0Z.OOfCJva3+oL3g+f2G701JgVCoPASL9AscPcPv1ZeHfGzBMjZM5JrWEKL8y3xpcZVCssCzvrMi61elN5Qv1kZXNxDAOlsV80QdeSEdk3rzNOSkxL8t8m5HhnFsxZadLK0TTwUSyqu95Ha1r3hW7h0zz5nG8nXlYlI7DPzc5Vox9ndD8pjnqc+fo2Zlt7gIvFOg.xH6vQ0VDzBItdW.It8aCPHMK+BaeG1TFGB6+5tCFB.jPhD20aFZoGz9EOozhacos8poCJS.A.tV9qVR60i1ePx2xIh1mpjLTa09j8Npcg61CKszRHSlLHe970zzXhIl.iM1XkLMiN8aj0OcTsiaWGsloQjtff.d.PEdkLzzgM7CewZUvyOnNkEZafyBrouOJzkGPxjAyIaVoclFA2iFxRSan..d1dNhoFZEBg4BLSPGgvzoQLOCU3BfFIjdX0+9uARWnzdPr6xqkJXbHfWP.9Eunf3lAcgyqnzc1pX+sVGzcJ.J1eIzgqGC14Jg8wiu+XG8p2X48M6Hcgkf5Yu31UEW+G1xCg61y1xmwloW6NMICdN9k77sGwAaMqaeLUv5G2ttg19+0ZXthX5rbXuD0a2gpfIrV3rdVn.zJyawgqeimc8fRaJ6mJEHscbFVm1gqmBV9Cd8gaGX6RM1RLJb4qz4abyG6ZJyzQEt7ZdcAqOzEufHUROoOb8WoIOvNtr2uJbstpjcHMts6LOtWISW6z1N+i923zB6miCd7vk6JgGgGhZWTxkd73Bpl1eK5EBkomdZLv.CTSAS2e+8iG5gdnxBlNtKzJM5s6hqVpiq7R1KRK.JHk.ulWsIyz1StP.mPwp.A.fzDVPL6DRz0ol0ydEC2z2DT41olbKFTBJY7E89ha9W1QcnjvLq77Cnw79ezZKuRSy3NhKZcwNsxV82dKKoGNqehaLU5UIScIutnyuhiuhAFtcENubq0HmqThw8dQ0tRkFtdrFJl6v0snz0gQuO6Qhw8uIDcbD6XBU9uIE8yS5HK6gaCGy4fRIyiHiW98uD04IwwO9wwRKsD.h+P6yOTStYfa94muldsiLxHXxImDISlrjoGP4e4x5quNN9wONxkKW3i2HLxHifQGczXyB9dEtMaAasqpD.ED5XSukMOyUZMrFpvrA599kTXynaPF8DAAjnDlrcF731SlRnMYULZMTWLSvAWzXBZieBm9nsTHCy7XwL25YhSWG7pbVvMAi3GIXDYwL5JjPXCbTHCh2OZ+wN9Lf5lIXCaFlEk76PXybr4QzhhYFszwUouCnQzLYaWGFjAWg8nR3lcZmNyjsasncGehvRBJb15lQ3fcZJ74oQXlgMuFMfL5xajL3W1NUILSCg8HeXWV7LuWJTAYrN7EEDFuyQTHrlt0PGoM1nrAdpKdjBrayYWqZ+Igvl4ZSM9aJKIYwxnRHgB9EChElsgsaWifmGfIi+ls+sGSAavu1yAgfxdRXyJu8HDD79aPcnKEB3dkoTKJlwaQwMxL0jtn7cuYqyXMQztkDKu7xXgEVX2dbP6wjJUJL0TSgicriUx8WoiHxRKsDFczQC24tFoLYxTVVo2KFTcTZABtTQay9Xv8CcwHrp1xu.n30oif.Ps01gvC.9EOX1B.aq3SFTy20ZMTGMal1RbQBsY3q.fZSy0Yjf.sDJkYYPEjQbX9WgHXLIM+tzSBHKMg41o+Nk..BeMf1z54BCHUGLlzZT7hkRwWCfYrDNdbKuAesIneeMfRaVN05vSJTSaOTCH8.jByxmmGjg6zfnh63nHXkhVG7tlB.pBl4rJHvSeE5tfFdJ6yea9dnPCoRiD9ZfM0.99PHs6TPv3PFDormcUUwcNHbmqU9Awt6dzMjg6kXXIeDFYoev1oAQe54Uxzrj2e0lRvQn.fRAn.jJ6IRouY6FO.3IMiwXNAlK4xzt6hev66BkcaBy6ghvcuE.J+haaFrMfTffSXXQwK1RDQcj3UJQpgq+96GyN6rnu95qjub2Mazta2cwKdQjMa1Ztlr2thFXQ6VcTWOh1GpC6a0gYlTGlwPcviKDhf.sAhqFkKd+xhSCsGz1WKLAiHDILYSy9dotXPalZxUDNchN8CiGJLCqEebafVv9JC5VHXyB.anAt9l.O5+.v5OKdlG8wvye0mEdAYDrfPiW9q8UCj7lAtq2HPWRft7.N..5tXFaqTjKkmIZ6uGSlq8U.W2Gn.LA.6Tavk9h0lc.QqsuAXtzu2kDBoott0PCgRCTPArA.t1l.e8GC3I+V3Ie7uAjA6HylRfdeSoAt8WNPuuLfC0EPW9lVhXvf2r9TDbEPzl4baflA63RAUwwucmAzvzpCudAzsRAszlA83xZeP00K.fVBE.51WCbsB.+vMLAkZ2T.vrgpmDn6ff6klZMO7cd6NhrILisMsYVt31VgyW237sAomPZ5NMBEDRS+rQHDEOxCBoY86l9.an.ttB3I+V.O42BW6a9swS+TeGb8t7.dE2FdkuieJfCjvL8BNRH1iJhBBHgrXYsH7KtSmET.WGlo+F9.e4uLP9mEeyG8wfmcmLgBEjR7xeyuIfdRB75d0lsE5VZZsk1kmxDc6wfUaw8TIh1UTVW9fn5w3iONlXhIhM6N.kGL6oO8owoO8oa5iq8ikvTIWEn01Cksygz2ofEhkmDeuanKz0On.zXyf0g9QVGJChe2118D3Y6tKj5.hRBxaqXq4T66SRsIaol.L8AV6YwJOveA9G9hOHdnKMOtgBZbfM8wgf.IBB5VK.zRAtlViq6IwymPhW1q+0hW4a4Mh2z63mB308ZMiotLYfT3IqoZ0sL9ZboemIvUd3GEIT.Iftrs00Ry8IcNoC+gc2Eto670gexe42CPWlrxJ1LX47QdL7Y+P+o3q9olCpqrNNjeAbPHfmxD78lPfOsPgm2yC2Pu2NF5c9uB8cr2NPO2Djcm.vyGZor7K3Otqm8U.apvew66r3YW9QvMUvOLY9RMPhmNONfuuIK3aSBg.GTowm42cBr4e7MCszC95humHTZb0tSfej+o+T3G4XucyoCez5YnfFa90dT7g9cm.270U3.9EOAI8rIlN7j1SF9yWOgDWsqtvO2uxIPh670DNtMY522jo+MU.aV.O6mdd7vWZd72+kdHb0K+j3.ET3fJM5FIvy1cBbius6BuxepeRftzlsQh72sr6Zn4DzUAwFJy7nf.3q+H3AuveNdhGbQ7Te8GEGbSeb.eENnPfDZan8JrgvrM505xC+ftD3M8iODdEuk2LNxQe6.8byPjP.QWxh6TBQTGAlgZpgHYxjXxImDYylspYk1d+4ymeG0181IhFT+do5nV3jfuJJHK0BT7PraJGA.aeEN7oZmt..c6g20G4OF2vlEfTG79mSPPtuR2Js85dBHdA8.zMLWjXp3yzY4HHCyZnJlo1q4Crzifux88QvW3S7IwM4qvAj.+HBARH.5R3Aox2jkSQPIDnTl5XUCrw08w0+xeU7MdnGFK+AuObjez2BF5m6eIv+q2MvMzEfLn1XcFOEW9ilU1n0.N.1zGW6g953ZetGD2fVCUv1XEfFdg0kavMcwNQwy0smo1f2HHBVeAvieY729aeV709q9THouO5yKA5RqQWBykIdaoLqzZ.gDaVPie3ieY74+M9OhEN6G.Yx9ygd+2+t.totfvKn9ksAz5lYZs1rnVPgq9vOJdt+5uHtgMUAiOSqYTnTHkTFrqRQWODeMlq0ZjTHvy8UeDn7DvOnVsC2gEgDWMg.a9lGvLIzHrtps0PLT.c8cWCWYgu.N7l.GvWE950gATamgleVHDXyD.OimGRLxUB5BMRHgBnfuIC7eu73aOyGAe5y+ggds0wMHj3EJj31DJzsTXVl0.ea+MgmxOXloKYa.ymuB1oT65wMU.W853G9Id.7W+g9X36909Z3fJMND.d8BOb.OI7jdlxLwdtFDr8fR5gM1zGE7k3p+4eZ7Et3+e3ybpea7VF9mB24+12MvqpWfCAfDxR5S3wejjHhZGvLTS0sd6sWL6ryh96ue.TZ.qwUdE4xkCG6XGCKu7xsjwWkpa68aJouSisw5hD.87O9tL0apMHhf.KBhf077bOD7Zs4n5KQUN70QFWASWATAGRdMvSuN9a9sOKV5iOKdIW2GuZkD2DDPo0PiBNsoMaoGXlQpvcTxzSrMAU5gqqEH+m6AwezW7uCuz+wuE71+O7d.9Q9GYJCjDXmkIPkBI2PAuMUHkPBOkuy5zR6+41RsIrTV1n.v0K.TPfe3klG+o+pmD272eM7pAvMnkP3WvLYBWP8CW+ZuX5jDBnEIvZW4Ywkl3CfWxC8P3+se+2GvKpGfDBHR3U7skRNB.B.efaZCEN7lJbaa5ztBCF9ROufwe0WEn01ixgBGNQW3PZMPAcwR4QXKYHMtlRiCVPWrdscmNPap83BZjZCe7RUBbiEhrSW5hiO6NRpfBOqnK7CTJypnBJH77M6P1yuI9l22GE+k+9+g3l9NWA2lVfaDILGIA3CgHnN0Elxi4.P.sueIisn63sTAyQNYCefuxifO168T3YW5qiWluFuFk1bzRDJ3AeSlqsqiBGv12C7MqaJ3CsvCRcBb0qqvi8wlE+0OveN9wF8mEuw+cuafaMEDcIL6XpfAOST6LIyPMUO5u+9whKtHRmNM.JujJhlc54medLv.CzxBlN5XvdauZf0lSDwH2YvIFV3gqFE6FAEYq0YyMa2VvjJXufRkvK3lDHQv8kH3PS6IK8434ED.fDNmRcH3LgKLysZgDPX5UuXSMvyq.l+yiyOzOI91ejOAdsa3iWB.NbvY5nP6CufQoMHUQX2aPBoP3TVKpv4d2vG8Hz3Up03ZK72h+fex+E35en6G342zTCz1S1xf.DM83jh0.touBauWErAxaKIAH7CW1LcjjfmixOniTXueyZ4tfF34K.7Qu.9vu6wwK5YVGuTOObXffLZFzd2zxRuAuhA2AMjvGIE.2A.x+W+4wE+W8+Av25Y.70PCU35IyI1oevIAoY4r7iRSv6MhX9NAsrjaEKUeuvkIgt35aH0lRxHb42toXoabZqQ6hcECyNEok1riW7lVnLqazkd+gSecvaHWyG3A+Z3SdzeFL2u4uEd4eu0vsK8vMIA7vl.5BPBcXP4tsNOOm51VGzgXB2QHUvsmaS7j+t+WwezOw+bHenuJdkPhd.P2PCOg1rOPphY3V3dtDH0.BUP4pXG+9.BebHAvKwShW0lZ7X+ASi+re5+k.e4ulY4ofNXMkeX87yu6ln1Kx8pAVPMeYylEKt3hnmd5oj6OZec096SN4jXngFpocxGVIQK2in8NXJd1flzBXZeZA0lqVHC6HAZgr7e2I.5syW4Kz.xMT.Wq.V+iMK9.i9uAuvu2UPu9.oJ3iC4qfmtXfpZmKNGaGBsBIfFGTovMWn.d4BIdkanvG9W62D+M+pmD3GrAPAyIlmsTI1x9zsCUXYyDMfam.iCBvTKDHgVgTWyG39e.7geumD2wFJbqZMNj+lvSuMCVRnPP6p.d9ahaVqvKSj.We4uNtv+5eAfqsIDETgmnnEaudl.qirBJbrVbmB1dAqE946vwSjIsLlRqRrEG4Bm0mEuE+xuotlA778A1XSfm653o++4BXl24OOJr3WEuB3ga0Wiavu.778Mu2HTPC+XGuUhTKLk3wOjGh+kO...B.IQTPTcS74eumBWZhO.dkanvsqk3lKT.c4qBZodQWF1Zhf0+IfONruBu.eMdEhD3f+CWF+wuyed7L+YW.35l2OkN6D.+6WD0dIwYO6YCCvI5IRl8molqJcB7E8wVZokvwO9wq4o+XiMFFd3gCmd0x6uQKWB2W+PCMTEKmB2o+5quNFe7ww4O+4qow8QO5Qw3iOdM8ZhSbcaD6XrSe66spKeTxycaMEiVayQOLykVKwQqkSaV4h93k2mmkE++ELASm+O6B3i+qcR7p1PgTddP56GT6vZnUAk0g88Nk88NaDFA+SjkaUPeo1dn1kvbR.dyPh6PIvS7guebiEzH866LgkohNrAU3NwJueLWr5Nrm7XRXuTsDtVSXCNs31bGbSETeiKi+p+y+eiWruB2XBA5Rax9oF1RCwGE6RJtqmClrt+rP.n7Q2ZAdwRIVcouJd7eu+P7Z9kd2.GNATI7LciCXyHryqqjIpxrr.QPF2Az1LGGI.Qa+BWKUAAUaeDaooTrOiCX9bWX170l.Hc2drj5UVWdGjKLqrQ2tVogTqvAKn.d9BX02yuItze9mDuXk.IkRzs1GBcP1xE.HnufWrOl6C.IhKo7lctJnME5CfmWg+l286AW9u7SgaW5gaLnNqM8mZgo6IFtdy92WJcZZ6dLEO2GJtCTBgojlDvGITB7h7jHw2ec7w+UOI9mI7vs7OaXfC4AQBIzn11oRhnluD1CUu0dofM5TT0qXXAO1xKuLN0oNUMMcs8BZavzwMcqk.pqziEWvp1o8JqrxNpdomXhIZHAS6NNsio39Yp0S.Xpyzq6iM9+8yf+j26ovqofD2Bz.E7Cytoa.ogu1cv6clSpRSIczkF3l0Bb.3guxG69wgtiWJdsi+uA3fRHpgtaAvVeZg41V.k.nakFO2k+l3.dd3vGvCdZSViERAzpc9QOIAz3vJMtUo.+ku+OHdMu8eBfW2QLwPJJdRJZyDcwKZN5vLyaC9sVl6wOVcKuHQPeCOnLNr+MHD8HAr8ypqqtT.2fuF+Um3WAE9AWEGwShCIfol1gxz+qsU5cjidVIi3J8m57AvysA9b+5mFW9u7Sgd0Rzsu1bcDMLa+E2lIt+VXkD8D2N70n8QWEz3VgDhMTX1+SuObOu5WEva7M.H8LaqrMpwchnVGYzOLyLS25sUA4svBKfLYxTSkJQ5zowktzkvwN1wJqSarSFaQKYh3JghnutcR8RmLYxvKS4MhZDrRkeRzGqSkPGbC1ZRNlr3UkWmaoYD2ZCasCGsFnKqVnCuIQzd3bor82Zk4jcrfBX0uI9n+5mD8ccEtIcPM2ZybmRXpY2nKWB6gtOXbYKAfv5M1FfTv7y97C1FPAe3IznagOdQBIVXh+q.y+EL0wcvESkRlcAkxgc4SXV4DbH3KuqPXGWJso9tsSOasFmPnvgOPB3IJ95zAYRU4zZBsyW6xUwqHLxvr.WbGa8gP6iaRJvK6Z93g+89iLkofcLEjE8hmboAKa1OCqctJWJDkr8fHxsnJd+1wmuolssm2BtAKqBxJbPuPw43LDNNUhnaWJiby9bUvSCbCa5C4ZOKR5IvgjlRDRJzvTe9ktdx8ugIPUBj1VFLaT.O2GcV7XejOAdwBA5FlZ42MXXEL6rhLXZJcl1hvsQhoDVhVa51xZBlRAQBERJ.t0u2UvG6e2+m.WIuoqvn2deNmHp0Q59GY1KDfQmln+Q9nO1oN0op45N9nG8n3RW5RXfAFnjfHCOAtpgi9Pk5VGtYkNtsalXhIp4w8fCNHxkKW3I3XyXm51o6XA0DnLchg6++vowM7zqiaUaxbrUbkaj61a6z2CcOI77zJbyZfaaCM93+GNCvSuND90VMTuUJsLi7Q2I7vMd3CAOm.7KcbUaSaKalm61WiWnB3q8omCX87l1Pn84DtbEzUjC1KLsPF4y26fwhSfttm7jVgWAMqjcvpbSY7nvATZj7fciCBMRnKVJFwczo15sebNIG2bSfmIO93+N+WvsUPgaD.dnPI+sznYY1pVpCc6+VdYyoP2ZMdQP.+UxgG526CFbRJxR9fn1Mx3xJcbY0i2ZN2htN1JWtbXfAF.m4LmoldCchIl.W3BW.oRkphOmn0B8VM9pTVniN8..Ve80Q1rYwINwIpow8XiMFlat4BG2amw114VzLrG896zYybaXoSWkfVDw75Ja5Elg4R65GQy.o89KIiyt0Aajmew6uX+y.apA9reI789reIziWhfNuPjZ0UZJSCn8Cy3HDdk+dnMCe10GAcRAS++0GHnCY.gGTQVvSnz3E3k.Wa0KiG+99n.OuIfEksDEbxPuSwCX9+krRs70S1tlQ3msCyjdwN.gNRFmAJlgyhueY6LDw+6Bgm48EsDRkFGVHQg0VCemO8b.aTvzJ6PP2TIHCzBgHreYq05ffp8b9buWYYlOLqw14uxjNYk1bQ8ojBfQa5fKloiS.6BOaQFuEm3pEWeVb6lha+3ls7Cc3tgmPE1inMKYdH5IwZ3QzQal5lkkJL68U.OuBetem2G5ds0QOddPpUk74rv+1nsCfDlo4fsOidjSbFy.HrqenfuoynDye2RpUHA.dAdcguvzeXfk9Z.aBHQsUZRDQMWxnAV4tm2Tqkc89LyLCRmNcMWpDyM2bX7wGO1RHoQ89oaP1tiY.fUWcUjISlZ5jOLYxjXpolBSN4jgS+FYW3nZK26UBptRZqOjvZ.roBy8e6+Ndwa3iCFzCmit8EP0OGC1Nh92zh96RnPW9EvK.BL+4+H.e+qDz1y1tyipWE0wsioZXJIhRFOhsdmWqzxWI+8asBdJebXs.+8O3emoCl.mKxJvDM3y4IP9tk3Y5VhmoKOysDRbUOOroc8it5KatqC1T.j2SfmIgDOcWA2Rj.OcBIdltSf7Ij3ZdAE3gHl2C21yqHbaSgt6zQE9r+19uI5qA99qgG7ieQzCjHgxGBU02w8319cauX37Zc+dY..gVgaTqwK4593K76+ACtzw6Ws8FgHpEKAPk+CKLn5lun+g2QGczZtaXze+8WR1cia55xMy3wsySa0gF082sO2EVXAL7vCWSk3QpToBKME6zJ5XqQEzazunqd9hu1IaqqThAh6Syk2EO1h4WY2iJ16O7v+GDznMStB3Agx2TGnW9ah+9O+WDudgDc4q.zpRe8B.s8h.hsaYHJ93kF.hMSg9g+N.BCRUifS5uxVKnfNnVquAgGNz26J3J2+Cfa4W7cBSUO6UwkuxVmKT.ZuH0nbwK43gedy9zCJQCy3zVmuhRue6mGBmI1dYcPljEEqBY67QDbVHdHOI91O52vTG0c6CgWBSVkkBfD.W4Pd36b.A9dRMfRZZ+bZMtwMT3kb8B3E08ALyOsDgciB6X2V+1B+fLeCr9FWGemC0M9AckvTU4Bo4RudPGVIeWG.upCzkoOlKPPcUW91eE6xG1tNBBCTNb9aeeHbmhBpqX6IZYv62PEr92dzSBp69h885h0MdY+sPeEV+9+j3EdMeb3frPaNY.kAG8ih8BccPY0XNQZcNBugiwfftU1sK8Cqga6xi61Fg8Rc6XRnfmRiWf1CekO0mA+neymD3UeGAGsAdAegn1AIVZokP9742yFvQ6N2raLyLyTyASOxHifYlYlRld.UNKLUJaJw89ctb4vpqt5VNFVbwEq4R7..HSlL3hW7h3hW7hkEjtVqwpqt51Z9WMZsFiLxHXzQGsrGiaa2ZTLqrl+SDzSeycoOKRpL8GZoa9SCJEf3d+wt8quV.kTfMjhfroZdtcoElq349ldOczHgiqbeL+tFcqz3En03KbgG.+DuqeVSuGVT+IAzca6n6Df4btzCWW.rA.7klfC6VKQWJMRnTvSYBTq1Rvgog28MejG2b0mDcULfMoDnKI9E9fe.fquoYmafHHIuZfO+W.W3m8cErtxVNOawxmPfqI8vn+2+C.9e7s.DrCQPByNX.IPhD.GRFFwrF0V2DYKWh05fN5QwR6Bvj4eyEndI7SHfuPfMTZ3GDGpTCzMRfq4oPBozDjpVA3qvme1G.2hRitBB3VEt8Swtghc9X2NxlYeeIPAoD9RI1.lXo8T.cIfouUqUvCB3157beGNZlp8zBbHnQxBJ7f22GE2089qFshpHh1Ek3Dm3DX94me2dbP0nToRgIlXBLxHi.fpmEY.SsMOzPC0RuBEtUlc1YwryNaSe9jISF.T9gdeuTsTuao3VY19PcT1NJrJnDJzlSFwM7wW4SOGNfHHSuZSsRaqu4vLNFjIPn8BCfABITPimUA7cQA7bc2E1PHgGD3vaV.I8U3EJDlSBNk40qfDZMfzDImolUcHzlWeO.3Q95OBvk+V.u1dMGCOQwkuhYHUEaj115Y2lnxvV+mMSo1s4z.lNNLPdeE9dRfm6.dXCoDdZEN7FJjzWiaU3gCIzAKGZXuriqfI3Qg12rdUay1osOK6CO3gtK3Cj+p.2b2H7JRnPAzUB.oOvA7JFurFlS1sCk.azkGDZykj6Re+0lQ8fiLg1KbmNttm.3PI.totA7RDrdKnM4YSFcBO.O37dY4qCqE1LMqrYjVaubyGDDevEZHekO9g.XMnvOvC3ZcIQAoYcoWAMtAee77RO7BkA02sR.j+YwS8nONdcZIj1R6PpgVapIZonXsRqDlqBkBUv16ROrgPiueAEtpmFOW2cgBdl.oOzlahWfuGRIS.nCtZVJDAGnA65amZrO7uSEzysEB7U+zyg65W9DAWwRqu0gDQMFIXYcz4o2d6EyN6rn+96G.UNSy1ed4kWtla6d60DMy7LP5ViRpEZaeGVoA1PgG+K8kwaPH.hbUqyFvY3qSqAz5fx2vC+..7cgBc06KG+u+u8mGIdquEfW1KyTyqO3CgG4A9j3u6ieAbqZfTddHgpXsJW7BBS47zlf9OjuFqL2mEG4U1mIHv53b+p3mGca0alR634jR7s0EP289xwOyu36BIdq2Evs+RMK6eouLdzY+j3A+DyhWjBHomDc4WbZZ6Cw1RCnrNLgIlNjPo.drGC31+wBKYFUPIzHR3EFOqIXPMPBAtdWlfA2Nol27YISPna5Ab8t7vA5N3xRuz1F3LuuYBz079rcb2H91G6xUzsS1vShmSCjGJ7CD.27cb63M8iOHdE28f.29sCbauDSv9O02A3q8n3y8294vWK+2GvyrMZgG4wwA1zGGBd1ppIbcs3+e16MOd83n9Le+9q598bNRxRGsXiWjskch2jMDIiWIjXKYB4lDfXYXlDBjIRNggvMICXyjLyMbm3EtYHjgbw1yRlPVP1y.jkIik7jbSlYx.RNyjDvFv1CArASvX7VLHYcj7hjNm2t9c+iZoqte62yhVrN535Qed04co6pqp5p69W8TO0SQ2RkSApJJXBqxtzJtfe32HWxldyvkeYvROA3oeZl5yceb+2yeFey+p6iS0TxI3sowFSp2ft3aTO6pyVrX3a8sdF3weZ3BOKxTTmQFyOPtusGmgMsoMwV25VY4Ke4cJeiTHhvcdm2Ymxc3URHcXSS0kcNn5ibHMvrt9rKT5f+DC7HOBi0uhddVLCCkdf4W0uh1QPiphaH66aE91lJVy67swU7gtYXjBGKcgC1O32KqcCWAqcSuIty22uH5tdddURgSawXwJtfTLoctBbZq0JfnLlofu188E3r27OIzyhfg1qviAXRC7Oob2ntIvHspfQwJNep3Y0JNq2w0wU7gtUW4nvG3FB7F+d4B99uLVyUdIbWefalydRkUIFmyTnUdsRmzYEoY9STKFJwn9.iEA7Z10UK6XRMtBDF03qs1asix8vF0LcWEvfjG.iaei4KKgUlPmam3XTd5jzybEAsRKgQvn.Pcku812xSNZAm522Uv08y8tQtxK0ErrXb+MDk7xWCb9mIu921OHu9BegbpJ9p22WfQIb+CbZOOHoCIsss5zztuB54E3w6Ir4es+kL5+vM4FE.Qb6+JNa5cAqgu2290AefakG6Sd2tEJFfRu7TZLQG0XT7.fQTFw3FIF9peUXsq4vtNLiLx3HCxcs83Hby27My1111X7wGGnIKzoH7fpsrks7J9foSQpaHTqwxLNZhftoCuWDwwj7D6iwrJkTedXlbyCqQXeBTdlmNWw+xaAV1nvh6gNVIrndnKpDcwkvIzC1vqmeneg2C6QqXpDusaXyefPvtfSiq68IeZmGDens38MsvJF1qpLxZNCthOvuTc4XQkniUhNVA5h6AKsGK5G+Z4G989+IS.zWJZ3bKyT6WiVKQCT+Yhj18oJ1MN83NDBxc55jZ5wnsiXbjD0sgDNfwvSaq34V4x3c8u9ivaZq+1HW8UBKcDzkzCcIkvX8fwJwNlA6XFzkLB1E2CczRuaGJrmm5oorvo46vjJc5N9NF3E1S+9bUW++HF8GeSvIThtjQbmeGs.6XFurXFku2esal075tB1iZQKZNIaSKSs+rQUVBJOyW4qdjgh+LxHiiHHGP8wAX4Ke4b228cyMey27PC9HkA1G6wdLV+5W+bdBNtPECXqXYloOhg.Oe0e15ChqkuTqAe+0MoudhO+Wfwrpew9nk2EGzAaqN8LowvyZp3s7y8tgwbxJPMdumVqbZLFqShFKpfSYKuSLqbEreTp7ZokHizEduSNDbY8HYTfv25g+pt.+ABqLhou5d0fzjT9aVdB9QLpxjhxtKTtlep2NrxwcrkZZtPnHfi48E2i07y+OlpULNujZoOpWdLFuadDNN0SvugEzpn9fCEasmeGMjb+JnHp2XML0eOlnuS6kFdxJ2XGRNqCFbUpOTVTW93HQuUTSb4ZGSAVJXW8q3YOsSj2wu+GG9Q+Agk1yMB.lZGawR0.GeINKJApT18y7rt1rIcVHVVa4K1XTTivjUJuTQIWvVdGvh64ZiFNVdccqBty48J36ayuc18HBGTpcoEqXSFQgBW6mjy2FqxInFdxu1idToCeYjQFGZHGP87brt0sNdfG3AZrDh20jpKbi9cricLmWtuWniz.oyrRerAMp6UnWELlZhRlHkgyt7mXUElD3E5UR4q6xgRiS9FhKPnlxe.m0rMhgy+xuDN.pyYKZk9MBfM45nBw4vFsWknGrPEdiM8Cchz1cSIvdKMrzq3xfdEXM0dbRZ6TEwEH3X83hulqlWTcVd2rssbUsneiLOGGsf1SPWm1Zha2gx0Jws2KUg1VTXfE7ijqBkomC6aDdNqxKsxUv6dqeL3huHXQ8v1qv0wqj7ofTqoeRpWb5MBrVFw6DGskLVWGa24KCGzHr50tV3LWMLhI19Lj1BhSFLFw0go2vFYu8JX+wbmoYZlbNH7YiBkV3.664OhUOlQFYb3CSlst4uXKaYKryctSNqy5r5ThBsu49se62NWy0bMuhdxGNcHOYDOxCM9x1fwuHSln9PW7qrddM8Vh5lDfdskJpowJ+lHZzUK.G4dSoVdodFX0tISlakmKDrhoASxJVv.q97OGdIiyY3DETq3YzrdEzK3GvFw4qvEp0MY9d5m1og6jxCcv99zV+DH.NxTsaQS4f85AWv4ChuNJvtdPyx9.cCbBO9YrZdwRXxn7j05U5OWgnV+592O3DUz6nDM5Di0qubMdtAbL9iOOIjrR+kvLM.Xp08KXc1rbP8HI+KddkPZNScAY1g3HLHFdIU3oKgev266F9dt.m1kKEpCk1MYEcqbiAmjIz1Knube8PkvW999hLhoHZYgt5q5USxfcAFTPdeQ4ETkUegmmmMbSrsk6nU29VA2Hozqfy6xuTpBc1PDL9NPFXy109wuRgpl3DbMU+9YjQFG6QdRIdXh0st0w0dsWKPqgDbVF3VJ6GoowEewWLaZSaJtMS29tm8rGtwa7FmyqPguu226aAe.lpprgMrgAX5IiWdPfUtFrUZU9e+Ee.5gAYFNWj19bJrbQW9kEsxNIIHxt2YnRb1ilcZZl27ZP2hpdIpKf50d1SWgymtCef9Zybt.LoUY4m1o3XobFt9S7Vv1ocIuVNfTzHJzvjia5fSy0yccA3jlATNrYZYCX4vxJTNLfaBqBVUXeZEiewWDq55eGvXknEllxuY1BeuTLpF67wP2z3joEPDlrPYkm1owrRbyh.EvjEFJhsglc42YJekQFY7xOJ+LelOSm+vz4dDGOgtrJstX58PwML1zl1De7O9GmUrhUD+t1rfNaq+5ZHES221eefAqG6wdLttq65lSR7Xcqacr8su8Hy2uR.CanZy3HEB9zbXkSrouTKXaHIfddIbDXAMrgQVVak5p31u9A2R.EKUQVs61ENLClFwsqvczhAR6duHNMJahVYV2gF0UKHII3Smdi03JomyOj8ZnEgS7zO8ZYnzUdMs7HUfovsPgf5bDERjpQ67vPxft7mwWhFRfah++zf+gKcVATO4HSk6RHsI941Azps96gMj5UawWfJdia9c.KYTGy4TEyagbX61IpD7i7zUNwldTtCtxYT23gCumsZQBLk6N2Gp1Ra+mte9Y93fEmnpnR+sjNNJVZlxYjQFyWfAV3GrwLMT+W+0e8y4fou4a9l4tu66NZecco2MnVihyzqv11d+mtOussss4rdo27l2bTFIyk72wquZiFtbvqP5LwwRjVeGOmnUXT2z5a1Lr0Cd9xG76QffJZm10S5LhxM4HwwHbOnJOq1V7cLXlXXNPWp3bGjz6ULaZ+5BPaNTNB84A24Fcd9iCT0Mk+N.JEqbE7ptt2h2BBOxpU6gUGNzyAylmi520lWCjmVSYjwwqnr8MlmIuM93MLckmCkUOvwGeb1912dTFAcED7gp7BZ2wltBhNrM25sdqbq25sNqSa.9nezOJ23Mdiy470BE7Jwx7QaTy7W.CFPfqMaXDXr0S7sHQa0pbslg0jUjOwDW2WZbNT0j.9ZOj4cEXhM5NGgUxvP9K3jCHAWUnY.QCvXNlNiYJjrljOCDWRrazIuNX.ucRF4lzqQYm9uMCvT4f4u.RWPYL0muRp2TIn97pA16v1FYNMtBIFX30wJsMvLaC8R2ACrCMednCqX34sv4dYWpqSJFWGtH8d+wstaoUzjAakzEZn3pdo2sSRSvHyzs6ntV0RyzMGwllk6j4dPnYn1b6ByW.sS1yyHiLlOfAVoDWHxPMzTmjhH7.OvCv0bMWCSLwDy5zHHUh0rl0LTVNmqx8HMX+1R7nsLPTUYhIlfsrksv8bO2yrNeO93iycdm2YTS1oGiE5AY1U64Epswmuh1sgkDKda1rufhwuDkGlXXvrPC0MBNe3L+EzhrKelbcwQ31ItzT85kcVNoFiNQQvsIBKg4GE7Ks.ioGN67P93QSXMBujHr50dAPYgaQAROLC7b.Vi6N8RGQCQpkIT32l62qI6CdYjwwqnbXCKdWxP33QjNbqAbnnW5Mu4Mysca21.5kdXGyYa8VWVwTZdNMn5G5gdH1xV1xbVuz24cdmMVlxSS2E5ncmTFltzy3PEMY7qlAt5vxhA9Jds4l1FW8LYFY7rc.EFepqtXURBzMx3cx1Ue1s1wLLILgGBLxsxKpw.grpWuvXQoxw7pOXdIgY6ZMw5NXwUUPDPrItNRM+wtxuaaB0JNcU65bfjxhbq5Qej9.NWPQ7q3iZbkKbP1jC6ecdKsNwo+bQCxGw1nNsNQBijfmY7jzM83PR4ZvIJmo04iiNnRDdQfS4Rest7qV4YiuiNSG0xbv8XBZeNU6+gNs0Z+SZaVqg5Z8iaawJdSzVC0MQzMO7a6P2ttxWYjQFyKPIzsrHVnErUnLdi23MxcbG2wbZeusa613FtgaXffySCPqACbxfSvvYBSmbODQX6ae6rksrk4jk3csW60xV25VicBX57Q0Epns6oz96x3nKpGx8TsI2dpzM6PIB8pT3.UfwfTJIABVUm9Abv9r39JkV+7XbZxesuV1LGEO7rwMHBxdQCLzOaODcbuYQLG4uG8QxKGdY5RKmbcf9hqiZot+RpOSOmPqpUqXQR5rz.adniWVWasE2WgCVgTTD6UUm6Y+9vAqXw8UN3b5TYsTexLZmQFyePILXvbKjPn7LwDSvl1zl3du26cVuuKe4KmOym4yvEewWbi.kCXfgx9PLn51a2DSLAOvC7.w7+N24Nmy5kdCaXCbC2vMjWfW.Nqy5r3rNqyZZO+8JULbFDaOv+s0lbyOWWK172U0MZHFBxnHgMTifJNlmav7aR9J38tVfQlRYrmcB3u7yA8JaY5mo4WuDOlrOS9MeFFyBEFMxNY54baXDaTbZT0BgUpQj.q00RzHxLIcCmeXGBjy6+1pR8pZ3fiNTZ3QClfheC72aQJb5nUBNiRS2Uod+5dkbLTBp06rSC0tRuqSIoVLXXRMVqc3.y3ge2wjeW8+P89Mc8wNMedDZx24WEAc0I0ZRuVLPwVRCIAB4mYw8oIQ63g5QuzaLhRIvnUJG3wdBV1NtOXzRPaddpw0YUVXRKitq8B8SpqbCqg+f557kFl6ApBTzY8cFYjwwVzojOx.V+5WO6XG6fwGe7oMX5v283O9iyl1zll2D.6N24NYm6bmGqyFyKvMcS2TrCIcMpBYL+EA1bEQXDqkc8UdX9j+L+rLowPUofUaFvTbhvoFFwZYYGrOiqBhXhwLMSL6N6C06PwiiSayMG1+CYxnmqAt1d6mk58dAYDdysJcwVwHVK+U2y+Edg+7+qb.izPlH0v0guBKLZkkkTYYEphZL02eZFu2TlY5LxX9FxKrKcfMu4MyV25V6Tl.g2mFL18du2KaZSaJuBENOEoiVP5eyLT2EyxALLMe19A4M0jZsVp8ZeVp8BXUzFNePpKeDPs1VColaIr1nVVTIbxRO5KJ1fuNGYxS7khBWNvXwHB8FqDSka+CdYgpJho000AWEAEqXSBPTaw9aMSquxtkSFPRmxUCFTVZuRVRgPeA5Ct16scLDJvJNaH2HETTXnnxcch0qWdYFlzoxQHKcLiLx3HGxATmfwGebt8a+1YyadyCD7UWPUk63NtinUzkw7SzT6oKbk2Mxfp0B..f.PRDEDUzweXNvxlXoPwwpGtg.W8VImCMCDOcxM5l.fdYbD98iH5ONGTSFIihhBEzmxJ2BWTymczdR6xfeNJwH+uMal33KrlpSYjww0HGPsGqYMqItPoz1SQ6RazSLwDb8W+0y1291OVlsyXVhWo3pIycLrfZ6NXwD0GCzzMOR2uZ+yMYzqUF9PfOfKR3CPNZ6utq8rDVpmsNIkF8gYs49Q80rt2T0Xh.JDVg6Zyzrwog5FK4foq3eGg0.bFGWiAGASCp5zTsp1Dsy2boYO1lSq7smCv5tWk0kN5.y10b6tLxX9JxATCb0W8Uy1111hq5gsYtL0p4.3gdnGhMsoMwi+3O9whraFGFHOoDmOfYOyzwyOsrwyZoZL2bRm347beqx3H.FXNYHsbVnYQZzdjPCt3BLrloRmuMiLx3XKdEe2ceeuu2G6XG6fUrhUzo+L2kGVuwMtwbvzGGiv44bvzAWoHUCyMek5myA+w088N2UPv1XEwK745u2z50fnwYA0zvgJbKrzUM8s5fxMDw4mxpIVNZebC+dT279syh5bYjtJuRZYN3C0gsIbrxSJrL7FxA.lPqDGrpyayae8Qb+zZ4I4XjV.e6zvHwXC9jNcbcZ9VWYjw7N7JVFpCqdfW60dscZwccYkc2vMbCbW20ccrH6lwgA5RO7Y1oOVh4V+3MlZOWVss7L+v2G25vmq885fOACLv03GdHGT8qzQ39H1Aj9Q39N0S10l6neaRLHcwuP5D7r7o4nNC+dFYjwwBLuOf50st0wJVwJ5zkFlMnKaRa4Ke4by27My5W+5GXg+nqE5gu427aNmsDuwGebV+5W+rd6y3nGVyZVSmKVNY.CykNBPv3utnsqX3dvuJI5UNt1C5RGAYfUXutBltqvChr5IBVqEjZMOGU2bhzMpWA7ZVthVkW33FtdON4EM9uJYUvafNaYRR+1qjgY7JZ3k0gIdMPkucoAzzVU91MsWQPiMXklc7K98tUFQieaEQoh7bBIiLlOhRq8vikktBxscvoSLwDbi23Mxcdm24bJseuu22abUMrKFjms4ut1+YBgz+dtm6YNuBEt90ud1111FqYMqYVuOYbzCC6gOYVpmYzlQ+TKGLtMwglNrbdWuR0c3F5Y6yaQa2K5VdNYfzdAGIIy056c9praxKZieVhAr6CFRT+3pOc4+WwqXtLndjRbStP2piXcGOa1FQazNz2Yxzl3pw2IU+eURlbiVTaXwPJGLcFYLeCG1KrKCi43P5tm8rG13F23bhc2ku7kysca2FadyadnKlJGpqDgSmE30Nsd+u+2O29se6y57M.aZSahst0sNzI3XFu7iYpM5qjwf13UyUzt3RbcvgMBAXGbSCsUGV7IXfwNK0qHeoGulvjb7Z1A+TlkcCsdjx4X9qy4nUKpwkPlUE2DYTErhfqnUDWb5pWUCSXrNodoVOr4foyvg3jOT.M1tq4jnMUzy1FWDnItfiD+ij7W2nz3SSQvRgeTgputJiLx3XOJOR2S2zfTdfG3A35u9qeNEL8YcVmEaaaai0st00HMGlbLlsnsScj9cs+6d26dYCaXCy4U8va61tMdeuu2WizNiisX5Z2jOGM8Pr.S0GoJQlCRXnqCak5mbfjrM.kBT.FQllIP0LuJ7kdc4K0uh8pJGvHLYgPk3+coEKewzNECdbTIoMf02IKivKwTrqwFkpQKoHGuRFyBHhPkJ7BSNE6WfWrWAGzjd+kZIU4ZuZ7Agaa010zTs0pa4fO008pJfIkdbxKtWa23KiLx3XHNhng5tVMAOTV8.u1q8Z4Nuy6jwGe7FLJOcA9LSAVOLKvaXa6N24Nmy46wGeb1111FaXCaHlNcUmjw7KjCltCMGGgA52mo14eC8lL42zJPJHFffV4YiyfmtWn.5exqjxK7bgQEm9mwNvJkX.c4BBAloUsxwfrZX+EBK50rVdy+ytQXrRlrrdReYhLC1dxe076ss3jObsZgWq3VQouQ3.kkTbgqEJq4ZOVu.4UJwL.RHpQg9FgWrWIW708ixo+iesL0HI8FSZdklQkFLUGBitc6yhjNFV48fcU7WerhkA8xQTmQFyWvgc.0cwV7gxpG3McS2D2xsbKCDjSaoZLWGx9T1mG1hzR36tka4V3Vu0acNkuW+5WO6XG6H1If15KMGz17Cz0HTjwLf9J+5uqedNkW5fXi5K1wXVXAqndgSwTOmIFwvpt5qjq+262DpjgNpzyVq+JrRzMUgA6pVF78e4vhGgQ5EFSbfC09spZBs5NLp.KAiKQMSCE0ctH0jwqTgJvjkkL1ZVM78cEz6DJYFGEFmwdzgV+am3JkRRicEm9rKyCgRFYLeAG1ZnFpCZbhIlfsrksv8bO2yrdeGe7wYqacqbcW20AzLP2zztq.gCed1lG6hsaQDlXhIXSaZSbu268Nqy2.r4MuY15V2ZmS7wLC0yePWR8I78YzDZpVm6aYUuzjb18KnnPw4C0lN6jazkBLE72WozaxJnBmhPh7u4RitOlc6dFQWQv.Vi3l6gE.EJTVDcsitWKmmAHzbRiEXXOZaY0ArqCng5Lx.BtvQ74RXoundIO49sY0DyMs8pzw2GtWU3uVEL46ekQFymvgMC0gaj7.OvCv0ccW2bZAOY8qe87w+3e73x8cazE62sCv9PMnnv98fO3CdHspGdC2vMvsca2VCFoay3cVityOvvlDq4yOy.TXr9VV5jVLEULf04gObAQbK7DphEKKpmPQkEppXluEyrq9Ws3kjANViMFuIbTzHUlIh9FrHlHki3j.KrD1LCS4KcAN6fpL6YgePQrebOlsmcUUwHNIbnVMN4AU+eaJz41Sp0PGIa4FH0Itax3RkahHFtWloN15LxHi4Gn7lu4a9vNQ16d2azd6lsHUuzvfAiBMC3Yaaaa7fO3C1XamMX5XlbhIlXNmuAmKj7fO3CxF1vFxAjcb.17l2LadyaFnaoCcrDZqGvVGXXhFk8vkma4BFQIBGbiiJDifZ8syiq5egz0W9ov6azAXi1dWHeYzJ2J.mnTHtwlt1Z4RRGq5zGsHTnBF0GekDTeb5DAUhAgKd0VDcnNFTS2ZXzE5LtNiy2e8qGct7SH+aP8qchMpuZKYkv90QmqjNBKWacd53eDVMHqC5ynPivIkA0KdsOdacr76c6kB7Svyh1Kc1s82bZ86GaPmjejz9F70Gw6WT4a6V2928FKZrCVFe.0foq4l.oALKMxCg7jf0+4zUMTEDi20YNVWykQFYzFkevO3G7k8C5McS2TTqxskFQWA4bnns4ilXhIlfctycdrNajwrDW0UcUCzwpiqXmVq79Q6bqy.hhK.mfUwQyfDSeuSFmp+aSsALcZoBKVOF1Dw+3dABAVj5O0gjZt1YlfrcjfdSa4C1g78zEhVm0eBw8a.W+wmmeECTXtt5OFWLRTSRc5wO0YsmaEN856Zy6bptlA61096eG99bV2NaFZO1U5T29K79v0fDutzccT81kQFYL+.urtRIt7kubt669tYiabi.MYEnK23XhIlfq65tt4r1lyHiTzVS9yuBjta6cKNDvst9vJD4cMLY8bIiioQmLDbOH2nfwpNFC0T1oER0rbHcjPDAMRGZLr+0L6p0+lHtLlwOOEBxwvEcQjoXmjMrXhAg3rPLUrCtBx0B04SSLXZ2ZFWfw3P.vt7lDpaDax8YTPJbJAOHekPHJRBygdFJkj7y7EFUORivoozywN2mvFYYMtcTuc0L06ZO3382GTsVW2NvHDLvJx4wVYy3bLCEiubDFokzNrYE2H.ElTtgNYFCz0G3a.NoQY8sOCcjMlZMy.dFmaLAc8clKsCcg54E3hLJiLNtFurEP85V25Xaaaab1m8YG+ttjiQ.OzC8PbcW20w27a9Me4JKlwBTrPPi6VTmlLCLolvR0vfnvHVE9BOH7CbkwfNSC7LMBwZl07DMawMI7rfZld1vbAaDHOVYwKcYwIM0.rh6i+tON4jLcHVFUWP2QFpkZlzatBMZi6G8qf9VmOZ2uJJCEIg0c2R5ren0C+lA2DdrTfRyzHU57DTzAev0h3Bf1OBBGubsU.g.jCSNUUXV6DMS2yxF59.vTUPkhLkqMtaxF55Dby5u5NR568KRowYIMYyROiLlWfWVBndKaYKba21swxW9xAFTKysuAzccW2EW+0e8ubj0x3UHnKmgY9wC761cKhZq1GXRUP4FdECGCkKpg5hFrpoBTHJiz2B6cBnRcRGIteRL3VGitA26vE.MU.OxWkhfVrCraGGUeWf8wA7NYnyqTKm04cNtfVMtiavcPbCidAq5zNUlPBZX1LPfKQFg0JLT3igNQiqwsqNn8FLMptfT10u+14i++8sv3S0mQqrMtWS5wTr9fRLBuXovtVTO9k+c+MYzMbkvHI9tcDKLBlNvNZiP2RYa00iEHNBBgewyTs5jwSABh0hwZqGjCB6bxHtjbbmu.uhk8ZWFeGAquWgwKEF214JG0K+JtxqiA4DIdnRrsHjVdSZ2z2BGnO+GeW+Br6c72vxlrxslgJUCNGOS5UWUQAGrzvo98c47V+D+1vhyATmQFyGvQ8.p+nezO5.dR8vr8tIlXBtwa7F4ttq65nc1JiWAggMgWO9ggZgS+7OWNnVUujeOKzQsQgk1G9F22Wfuq2xaDQJaFPYqvZhZxrpBNH7De1OOiQc7qAogLLsapZM+2SUX7laPsjUhL.JvIt5UyCS6kg4tganyKwXqXWO4S4B121Ju2XhO5OuVoneiuEm8KbPNYoGizupyQmHDzjHBVwxdpJvPeFcUmxLD27Br.YNDuTP0JPKPDK+sewGjWyFdczH3x44v0h0j7dfBgS5TOUzu4SBT2Yt1xGKp2dqhoRoGPuYK01pBGT4Dd1cy3GvxqZJh8XcPqiM77Rg9UJ6ax9rzWZpfVaxHiLlGfiZOQX7wGmcricvMbC2PiuuqaFIhvC9fOHabiaLGLcFGwQZm2luFHcPICtKISlY+hwwX13m.SVXnOAKpywrqfa48NBih0+T1QTX4V3+8m9dcLT22wDcvp4fT4XXcrNCtfU2+j7429eBKQDJB5+.WvshwwEbTgrp5zZrwcs7TpkUs5SEJBAgTfaEOrdBbUgPeSnLaSdE1DCQuAyW9Fsnjm+IdF341GXCgtacxRAqWvG9iiUAqku1m+Kv3pvnhkRiPoQ8uDJDnznzq.JJAwXoPbUO8MF3zNUeMjI47i6XoKvBlNs73jgiAzvpx2fv2uHbsaDTiPOSAiTAzGmjETCNQfjV+M+BNeIovO5M91fdMOcRmwowTp0OuEZk+CsOIHUDKk.KouxW89+h0x2HdbB0WtquEvEL7d1KO8W4QXwFgdEosMsIsUUJD7sWq7a27CWJJiLxnFGUdpv5V25ZXqbCakCL7aae6amMtwMxC8POzQirSFuBGQGhXdVPzyZHBb5qlCVXbKZDvrp7XrvRKL7hO9Svd9i+Sf860qoW5Go1jGfKVhopfCVwd15mjIdnuLKQ5VhLsmjmgqkmRUlRDNk0ddPQQiUZvz6CrxUeJLUxjda5gAQTFUgwmrh9+EeZnu5lvksXbWPbw7NUE7XOAesO68whTmNpMnnZk2577cfv+9P.+hnXQYRAWde5xeGm1bZZwbrLUyxukRqxy9vOBLk83FEwzdjMBeKkEreiPEhOv4g+nx30hZEKxX3q84te36rGu9nGrhvMuDrvTV5+e+yvxNXeFUTDpaWFlXigNLF9rQTrhxjpxhFeYGIqJxHiLNLQ4McS2zgchj9f1wGe7HqzCiIvT6o58+9e+b629sOmNdW8Ue0rgMrgXZkQFSGt5q9p6zxzleDfcSWOnsuTa79DLqd0reig9pEUJHth8IA8EaclSAFGotZHsLrRQ3+ue0+U7SdNmKboWDr3xj0ZBiehjoNod7RUvC9v7e6eyuEmZeXQEg.2Sba.MIW68EaQMXECSBTtrkBWv44DTVsjRqcWDCL1pOM1u.UAl1S1t.ieNIlTDmDliXsbRUJ+Y+69s4G8G9M.8VIzSwVXZ3xGz2BO+T7W+g9nLdekQECFrNOsNb6BQQUajgcQC4NgJTNy0dtt7u3pGiZ5dAGyzgIhZZfe0tbrpBFLwyGPXRhl5JKUTHEr3BgG6u493p10dfEch0muAp8eY+BTx7j5w3HzjNIU8iJxE8ZuT9R67yRnLKhw2wKmOuCIJ6PciWyHnLdkkG7C++Kq+C+Agk1CJbteh6Z.+jObRE10d3+z+paiSYJkQ5UgJ1XsT35Xrpy57D2nNYUnRD1uANiy+7luTMlQFY.TdK2xsbDMAaOQCaGvaHX5C0k66a5ltItka4VlmDLTFGOftBld9UP0y.L.iX3BthKkC9W9Yie8rQ5JhVwxLEL0tmfO40+t4M8u3Wjk+19QgRChAD0Grr0BO293a7e3Swe1+l+8b1GnOqzXlUKTdAG9nuQXe.m6Ud4NKzC0O4G842.CxBvZOO1eogolJYQmQapp61LharVVgoju025I4O9m9mk+A2wuAbVqFSYxhshEXW6gG7W8ixi9e8+AqwTPgZaYqYR8jbrcaCQ3fpxpuvy2MYDmt.VVn0WdeOwFYYKELB86aomwzrNJtoMG4QUUVLFF441CO7G92f09u3WBNwkiWb5NMJW.RoW6Bh0OM+leb8WCKkTLPoRwxWJSo91ddYKAD6fmjHGIvIjCQTVgofG3+z1.f0+A9mBm3JPDiKXZQcLW+sdZ9ieu+SYrc8bLto.SUUbzAhy0.ORau5rdR3EL3FEn4GUeYjQFbDXRI1kUjk98cgG3Ad.13F2H6cu6cVebFe7w4Nuy6jq8Zu1lSFjLC0YLCHzNYX1m2wVzz2o0ViUtE0oZhRCm8keI72du+0nQySvFdy.96asTJDJsJmTQAit6I3O68+A3D9n+647thKkUs5SkJTJUgm7g+Z7H2+W.Yh8v2sXXbifn1j3I6Nxx.20JNcG+cTKWy0rAuTOLnhacRL3hHVpPLFXkiyxN8UyjeimvoGb0hXz5YoneEjSoxsrNGC3ohSVLrq6+KwccU+PbNutKmy8RdsXwPIB69odR9helcP4t2KmgojEGzSsPLfnP91cXRmrjt.7lzVw4bYuVnmIrhjS6QRnsqUb7KBkCecfQfK37neHvRpbA+FluKI6YHfxv0RiZgSSL7v+A2M+s+E6fScsW.Wvk8Zc5QGC6aDCq56+RYUu9KELFLEDFSgi4v3GIDWmJpfQJ3bthKk+J+up5TduK22dwHt5Du2aa7+UAVLvYoF95+A2MOx+8OCu1qYirhUuZpDnPs7jOxixC8o+zL9jVN4BWG9PctER3p+51mdedWM990Hreqk8MRAb4WRzZJyHiLN1ixiDAUzdly2dxek9629se679e+u+4T5G7v5y5rNqANlyOBJJi4qncGtNtrcSQALhxEcMWE22G4eMShy9YmAKbFvUNKQQq5yJkBF2ZX+O9Syi93amurQ.ifwZYQpgSSEF0TPoBp0omyzIv3zAUL7B1JN3qZkr323FfHqwszoM3hgqWIm6UbI7s+FeqX9DzA5rrjDvfHtIg3hANCJX+8U12e88y+q+5OuSTFVkEoJmrHr3hB5EjwheeUc3clRUEKNIq7hkBm7keoNYwHKTBbtazX7C7ATJFXzkONStqIvnBkRGy8kDeRN7WishEaDFqnfIm344E+atO9K+r2OUhfsB9NKtjqXj2Cq5JuTnPS5X3wNjxLc74ThAoPgy+6lxULNuzt1GKQJ.5Ov7AJcDubc.TonphkIErXL7h6du70+O8eg8KJZQARUEigv4nBiIFjpvj7kNS2PZCg4ofvAwvo7ZVKrpwyR9HiLlGASZvuGtufAmrRArm8rGdqu025bNX5Mu4MyN24NiASOLuqNiLFFZ2wt42HLAnpc8BE0sHibgqkkdFmNu.3ThpTD2dwOZxtE+jjmx5WoDEQwfyIBVrQYUEFN0BCuJQ4jKLrbixnFKkXAaEFQa3dHgzusif4b+.CpXXuJbUa4cBm7J8CquiAOCENMK6GjeLtEjhu6K+0xKoVTo1GpctEhV6lHg6mDdotxjPEiZrLt.mr.mrQ4TKfUTHbBFnvYWI0SZR0mO70WQWavJ95KKUkB6sP3btxqDNiSC5U3C3avnVVnb2mPnbVDPJbLuKFN8K3734EAsv2ADpGIBkAaGDZuZT2DmaDTVtQ3TLBmpX3zJJXEUULZk58D8WtKoCGo7tGmjpHPuBV+0bUr2BkIMfUkj1SDutx0wS2KiuSehZoDkkHBKuP4TKLbJhxoXDVknLp3aEltxSJEMZm2bUlz50gsgWvZ4xt12BLZQdQcIiLlGAS5rz+P4ELbV+RsDuq4ZtF19129bJys0stU15V2JKe4KuQfzskXR9U90vdEZGl94veOtAh3VkD6Y3G3m5cxtKMLooXNUNbaq+A8VKipVFoeeVT+9LZUeJst..PaFH6zllBHRA8MFl.g9qbEbg+T+DvXkCk4LMnizRCm5OvFgkuTdQQc1AXx4s1LI29bHhkB0xnVkwrVVbUeFsZJFwVQgZcSBwYw465zufChv21.W1ldyPQQhMFtvFZviiCQ4ZLrtMd0LQALko64DSWL7Gf3OGTTUwnS0mEUMEKpZJFoekaTCTbSDz4gcvMlmDWG+V6OvF4aW.Grkd96pMZ6uGqRgZYjJKizeRFapIYQUVFwpTP+5foSq65nce3UUQAu.vyORIeWa5s.iT1vEcxHiLN1hC6qFa+.u.BueqacqrgMrAdvG7Am0o4ZVyZ3K9E+hr4Mu4FOHs8jTJ7c4W4WS2q1scRa+brGAFSsQ2jncXFJdlvLJK+s8V34OokyyqJhT3XNNggr1PLp6km4Z0qS1nMwA9IcVvCdkFjGFrsq.ijoe1sqJ6WDdpBkqZyuCXki6jJgwMg+rT47EaU75N13YiSfUtLd0uwqguinLYg3c1fBDo.q5jefZ8u7L3Ex+omaSOWZ7R+v4CxfEm6IDdEKmpBp5+d2dtOqBeWmNK4ev05VxwQhmWpqOBdq7wI9B2LhfGdKd443bgkk+CdMrmdFdQcPmMQSZuD7CcndRdZDIocR8RAe7ZPwo8Z67BZpckCq+LMDdllEJDL+PuAJN6yfW.vlz1UE7au2S38W2nXvphaxXZzXqE7ssisEaEDcXDfrpajBrnw1kp5j5wjFgucgkKeSuIXEKs4RZYFYjwwbTticriCqDnq.VBed6ae6bG2wcLmSyMsoMw8bO2SmLZ293jQFyDt9q+54r7RFp8CxNd.Rv1tJMvIuB9Q9m7yxN9U90YY.iIFJlEA2EtNMMZcUaNkvZT2.c1QjTXwvTF36TUwRuj0wZdu+rPOAqHHZZPnRyqa8AmaLFV+uv6guvmYmrjcsWFS7KvFRysWDINo3pymskwizYmjZtOcyrZkTvj.6Vf27uv6AVTI3shuYq1Dlc9oca7xA6hyh1FwI1pud0.b1mAm4q+J342weEqvYbdf1QG1jZhTTevzsOGnpKX0J+6IvR8wZATSsF+cK9L0kCebsvXk7V9EdO7mdi+xLtXXLwRgMXgdoWeDXllXZjV23lTrQgF0bwXJM+HCNZuhHToBOup7Bm3J4h+k+EcyQg7DRLiLlWgxq4Ztli04gAvgRP3YjwvvF1vFXMqYMwOmFj0w9fpa5Su0tHgGdiGPwKL3wLbla9cvo+muCd1+meVN4RCKpufaR2o.dexM5RFg.c79Ys2MBBttg529ntqSXOy86gIWXv3c8amJXKEddqkCtxkyO4G5WAVRITV3XjKVu1z8Rp8TBiyV5NmSmW2O8OIOvu9+VVgZn.CF0spG5yP0ApYUj.K7d+2lfUlgAQLweWSNRgxkHx.wDJRAUEF91UVNyW+kyI8VeyvH.FmVXGv8Th6oymfqRlHk38GbQf3RLnP77P7TplNx.MxkC31KhTWWJFEipN2lH47UCDBnSrXkhV8Gn1UXbmIjFLsK3yyEFXL3G487t3SryOKShxnRv+wCAIZqYxsUmNbLUWakgoLQG2GozqIeMIn1PchmUVqjzmi1c9v5+ekJ+9PvBHUgvL1cXm+pCCtVoxt7g.h2+2KDXjJNo25alSbqeJ18W7KwIaJHcZ5Fp+rZHP3Vcpyzr9Jz43X.23cuCuadHp65yv9IXwJ8XRfcYg23688.mxJgQJwt.xqYxHiEBHe8XFuhAoxDH74iWfKvJCZgAFsj2vu1svDm7x46nJGrnf9IRbIr8cIUJo01EPaMmG9t1+F3bAgpBC6AkmnT359.ueXcWDLpItHVLqPAvnEbg+S9YYoq+h3onh9kk3BaKY4QuEqcMX9qixPmLUSApsY8Cd8e+cr8YhSZbdCenaEFsDaoYVKFAQbKDLgPzZqC71inllLQIYVz9aPFNm9x7zUGzY56+WCT3zqe4q6x379+Xi72abswhcFSZVVC0Cos4RyehHT35kQ8njX6HuERWvsH7zRROc8Zf1xo02GAjThVV.iVxa4N9Hr2SZkrarTUTPkuCqnsYpt092w8Z5ZTSZW2kFv8AKEdJQ4T+9tRNyepeB+jQrdjExHiLlefb.0YrfGcE.v7ODz2aKWnPJ7pQsxwZoVAiHv4c57t9D+truSb4raE5KEdsV17Axg2qd8eFW5s8ZtN98AMFqFWPBfmwrHYeXsNslNk.SXs7jF3s9Q9frj24ayypqewuPbpAuo1aMsd4+tdt.V9QuqOFe6ScU7rSMUbAWVnv43GMz.sCsCfIrbMW+8tkS7ZW7vDqK.GihSIFlnukucuR9Y9D+tv4uFnWgWq4FedvNs5ktqfGEQbLL5GYAESjIcQjnUamddOp43nls8t2Rn73Y.2FOOFXfM7JnuW240tC0pt9W7w0FbSh5.q8ZBtPfQM789qcK7rmxJYW86iJdYFjddfBBqlkgxWXjOHQuvppTPRGI7ZkuNe300dZaVYv5mn1sIL..13wxQ4chts8gb5dYZvmas3KBoeaAnjzVsWWZYpX...H.jDQAQUAb9qgerOxsxyVVvDVE02wQKZiyGDkQkqdz4VN5.oendK3VHw.nCxgxq65Jof+9JKxk9Z3M9a9a3jiTYnMQEYjQFyePNf5LVvitXoc9af0ChlZb0wdGKZDX8qks7w+cX2qZ47zVK6u2HTIkt.hXPFM6h851+VJZvtlZvVLBGrnfuiH7sF0v67CeqrxerMAKt.5UjDDzrCtABWccP3jWI+b20uMS7pVIOIVdIigo7RWoc9oKFX6hszAKStIFl0zi8WVvypJO9nk7N9P2J78bgNF1C6aLbr4F5JOllOqlis6hZNtUZejBw1DsJuppt.2N4UxO+c9wXhSZE7j19tQCAe.w9.o6h05tFUjXcQfk514iPO2BxyY1vvda1gEYfqWNbfh5s4QCK4GZi7N+Wdq7DiX7iLTOrlhN5bWqQkXNvvtHBVLTIFddA9VXYzumKjerO9uEbxq.Jpkw0wSivVFY7JAjCnNiE7nK4MLe4gQsYtpl4rvWTAZEN0EW3VzIDmNOYjB3xtHt9O0uC6+bVCOoshWBCn09sbWoCItlQfgLTMthDl51AtoRlSlG6Wgm1Z46bhKi29u0swhdGuMGiYAq6R7ZyFiiicum9lNw3Fz0L7LVNZAr90x0+m76S+K6UySIJ6WAqw2AAe9q1udaxbbvmoiLWF7iaiyoQhGeUX+J7rVkccxqj28e5eHK4ezaCFy3keavEPpZw.nmY2VLcNvP4K0KSz0ZLdH9YQCYOz77Ur7kHMjfZeSY.usOjGGwgtNdtCpK+H0syBZ7Mnm93wnnvsBBs90xV9D+N7Lm1IxyTYYRsfJu2gq95rz1sMliBdIQnpaIytwHHjjORyuwI5dCgma75xNbdf3TFcvqmMQ12GHsS7cizWscYm51QgfpAFofE+N1Da5i7qxtV0x4Yq5yjT2oOQqymw5f3HTXhrRilT2QkqdO5e7FvX3ErvyHP+K66g2xm720ELcOCTD7J7BF13PjQFYbrA4.pyXAOZyFTaMLNeFCn66ToTTXbABdwWD+T+m+C3R9o+I4q2S4wMJ6tzv9KJnuwIS.jhF58LVG3elrPQqfZJvJFNXQIOeuRdlBC+cEvx+9uR9o+i+TbBuo2niY5BuTSHgA84nzZrBXKMN+q9bNS9wtqOFW1O86judOgukTw9JK4fldzO1QAHNo7RpmbG65.bbwgKtxgX3E60im1H7MJrL922UvOy+4OIbwWHrnBmqIbHztPUESZ.TI1HmCNVwqkvgAw5OFy1N0041lHalfLgjVxoowemgCA5fLxK30reAbwWH+b+2tGV12+UvWuT3IKfcWZ3.8JouojJuDEPMQqNTnHV1E+jfzktx.Ga2a7eusYvwCV9LMCvNLQ9vDid9HUmlqkvBt1HKYDNwerMwVtyOFkW7ql+Nohucov96MhS++l.q8cOhOgQwIdMn5t1rRLbvhB1agvSXr72MBbI+z+j7S7G+IgSYEvnENYlf13dAYjQFyePNf5LVvitljcoe+7CDXdKv7ZRfDpTynXaI.XJfdBr5ky48A+my+3+z+HL+.eu70GwvSixy22hUMToFPJAozEXhUpSeoN3S2mKPsFNn0vyoBeCT104tFd6+12AuwO0uKr1y1Ejk3X.NkJwnVm85AM02lapE4.ys9.uPbLcORAbJqhy4V+my0+G7wYQa30wW2nraKLomg9PvUA1pIpebgfOVmF70jZASXgug0xtO2yf2zG8Cwa7S8aCm2YBiJwfTbLK6C.LjNzTqsCCpU.s.KtWUpgpP8oJn95coQvhoN5Ras7VyDa8Vq0sK7kW2pLoAjZ1yUoDgRD5MMs2p8e4nmhmNxDg1XBNcSOhAV8Ixa72+2k21u2cvju1WCOZggmzVwDVkopLXqDW6QSQTC5VEB9OdAhezPZqkd+wVjXaaWcegubT1p7U2VNdtRMtzVBK08MudZfQ9IdbCeeH+Xa7pdDaLtxlHtNfc4WD+n+o+9bMeveY9lupkyio8Y2UJS5OmfusXn9Lztp1+18m+7sUN.vyVUwiVBic0WIW+e3uGm2+O+y8Nmi+ZiFxCIXDgYjQFyWP4F1vFNVmGxHiipHrRa1l4w4SR+XXnd19qDrVLWYwVybVgioXorBtjWMW2c9aAeimhG8t9D7k9z2KO4S7DLVkvHFnmHzSJbCDs372YUJ7gdnLkZ4fVKSIJuXQAmyUd4rwM8lYI+CuVXrdvHhi0xP9qUXJo5Wc1vfVvxzBeRMBRuBjBghq9J4McouV3u4949+O7GvC8WrCFsphEYDFUJnDiSsIdoE3RBW4XRqxTpxAUKGnP3TunWM+Duy2Ni8O7ZgEWBiJXK7S5xP8HMYmN5HECCFC6Ywk7r8TFspxY2eRApN3hriKVQEJf8NZOV9X87KO6yXUDXf98LrqE0C4.SxXR+Dxdaa6hDmrd6WfuyXiR0HETLCdV7.5mNApHnkhquKkBK8G4Mvaeia.9xOBe869Og+t66Kvi7vOL85WgDsswfcBFFgkJdtwFk0LhygJZerUeQvNRAemE0Cc+SwhJ5GCJcXP0J1OSwtWznXGonV8Qw7vzt6yJj5G4ViqCB5hJvLhgy3m4cxO209l3.+W+LriOweDO7W9ukEagQDC8DW2AJLNIH4BduxKSEgoTXRq67zAJDV+OvafM8S8S.u9KEVj+ZMIDDd80Sg6GjYnNiLleAQOdXbuyHiEnnVOwM8K2g6vrs8YY7aOtm4asfZg9.UUPeK7HeMdrO6Wfm9q9nLwS8j7k+7eQJsBEp1XRx02HblWv4yoeAmGmyk+Z4Tt7KANiS2MT2khShIFi+f0su9VWtLs99lkygUtqKOFWYoeEzWckmI1KO+8+44Qtuu.+8O7Wim3q903k129vnVLpiUPqnwxwYr1ymS8BNW9tdCWMb5mJzqmKXtRmFjsRcfjg74f461kq57sz2xA9ROLU694nz51yXfbdmenVYJ0o3ALB5INNiegmuqyPlz5gl0WVDL8svddd1yW9QXrolJx6rykI77Y6OQX8iVfQE5afWpWIq5ht.XEKCaYHmT2IFSqRZ6GFjVuznMl0BUJTgqclUgu5WkCru8EE3Q5HAoV3.8JXjy9zYzy7z70+Ns1GjqgXUX26kc+UdDVRekhppn5OhpBukTJrhRUgSdSq5hVKrxk46nTnCmsuNo80Oce81fsOaWe3SqJq6ZLq596i+T702weIOyi7nr2m7o4qb+2OkUtyGVwspkVghULbQW5kwor1yky8xtDV1UbovxWJT56vQgwoFjgH0mgccWFYjwwNjCnNiLNFhinAT252cA.4CJcJElxG.fptfTwOo4DudRDiK34d9Gp2C2C3kzGfaZcbZe7CkqCu.paNA8HNwIYpJWYXRe.LpeP6s0SLRL3B9umui.8Lt.TndDIhS7xCm.pw5qG8y9MqRXIW2Uo4Y3NHkAwqsFi+2MP8pcW2ATqg.Ms9EkEaUHi32sfFB7xUHcV0ggnzkE0wzbqPlmKAT27yg7meJ9oV+Z7hMJ8hPXmMRrBbsyvufmqgEHFujMTKQ8MoV21J1AyXoIsDRSEMHMB7KPQsX39HY.0t+VU2FxF5fg5udaJ+DDvVOATM98VL91nEN4zTZPMRhjUBKG7sQNf5LxX9JxATmQFGSwzGXY8EmSCStcte9uWq7N4QHnDoN3uftU8oT7A8gfx7RRnViocc7ailALKCI.f5euc4rc5jvjZHOaqpC5xFVAG8ANE7iXw39agDC1J3.GNmC16cxRHv5tCnZXcTHn24Xvy1z5RpCftQgLDfmWi7QsKCsCrqNfMeWizJhmLZLIECL2lDPcJB8UJJAhZ6MTBcnpA5tiPCFnsOelZ8hp++h0EUzHfzPmKR1u3jhMrxJpIarV4O2Mbsq61TWaWsQ5E9ofDjZm+o022cGoZGXszp9HJ8hvB8RrMpOHZMYiSS7v4vBWGVcyEAIFFsz53Nr7eFYjw7GTdrNCjQFYbzCZHHFuc6EdfcfYsP.Ag.jhL2p1Hw0GKQHOZQqY2yXRXV0z3uJEtxlBhXRzQas1tgA0I7gBhg5Kx.5BdPF4cYAA7S9SMDo6r73DFHAEwHzMSkECD.XXhqUGS+fZx+vEAMnaEEQEjBWPvpSyBDljfg.3SOtobvFrCRMLpChwW+D5DRGH5nKg1wzXjHNZiP6SijJwGwOxARriBgEalAFQfPf3QF0a1gi44SwiLxHiDjYnNiLNFhAYxsalQq291C8N9O2MShN0mpDBgJ8A5csvun9sOps0gLj4y17S6gLu9HNLltaxDdPivAFGa6FYRiRbnr5jXgHBsk1QH.SC0L11U9QGfQxYPKtZUi5u3wLN47BTl1bo9Vnc8aSnZqI4WamwXnr2FX70+6Ix8vEDXaAEL8LU297VZ6UWcdQrcl6GBTEGjTSq.FiorsACu0mu5XIQmtaGjVOiW65g54ZI8L8RMZPoL08461smssbZi51Uh+20l02wymo9TNw1Mok6zyPsknRc9ZXRCKiLx3kajuZLiLV.i1tAvv7H5FKPIgfPlGPOV6UvOI4ePBiynjZiX0SNvAKCGIKeQldkl4mFaSh2e2HX64.hqzfIk24x919X1zcUNzQZ9oqzrQmGZU9C+qKmhYt5RLscwmWtbAi10owie6NqljOgAa6ML2xIiLx33GjYnNiLlWigw7bSzlg2gog4Ze9sV5CoRAYPlt6tO2s0B8vl7VzZ6Fjov1Gm1LEGB.qn4m0VL0Igeul41lLeVEYxrdejNJmcqY157yPXtMx.sD+bH8UzjIeGsX9ual50X8Ty.UCivPr9KVdZJsfnVjaYwZ0R7gFLoVigMoS6t9owpfopNu1lA63PMezdIn3WLbBLbO3HmDJO9iu1c6EMwdBaKcolsm6VCzsSu1+9vCqMbbZJcp1sWGT5OsYfObba1tYXSZ1.Ze8TFYjwwdj0PcFYr.FZRfdo9Xc6PJpCJHDXz7KVxZJWglABlx5d8J+XyeWZU9ORwiPLP2gL42B3P8XN.qxsBBt98M+a3qCAV1N8NhU9GxhjTWscZm2csyZpo85UwyVo2.A92tb2L+PPu4ygxxgBZGLc3uCLxPoL0Syq+Z1Ymg0QmLxHi46HyPcFYjQFYjQFYjQFGFHOdQYjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfb.0YjQFYjQFYjQFYbXfxi0YfLxHiLNtDZ3uVbbSLc+8P.RBeGxgbtLiLVXBE.a80gyJXZdsz7kqqBkk36mILOsb7JbjCnNiLxHiCUzuxEPs.nU3dZn08WI7jwjG5OrG7MreWT22UTf0uQBBfEE08yhLPx3duhPQcdnCH4AoLiiag0e8GfHf1JRz1eW3yh3dUH988ky7bGPAr96cn.1V44v1.ClWMguyEfsFCJW76t52cie2ss9bFGIQNf5LxHiLNTPeK64u59YIS0G.TUiA2Z7O.TCOPW5l1oPXtCDVqJTY.qofEeIWLHBlBef.FfBCRA9fCR1sjPpk7iKyXgLhW+4CRT0X7mFe.kJVDQb84UDTU4.8JXry5Ln2YbZPYwvR8WVfpJRkEdt8xy8vOBiNUEk156iDt+Q39CVpu+Reig8ORAqbsmGrxwgxBemnyW2erBhps6VWFYjQFYLi3Elhe8ya8bZu3jtGLZTPMt2OzcZ1J+CCJNhlpDCiL9x3LV64y4c4WJm50rA30bAvnkvnFzRCHJJJFOiz1Advp63JIoeFYbbMZc8mQT.iOHz5tpFBjFbAUu6EMBu92+OOW5+j2MLhAJN1csfEEyAqv9Y9b7geWuGV4ANHKopxcOD0k+CaY.p.hZX+kF10h5wu7G+igb0WALVOTsBQj3nYYnYGFzV2+IOBUGYQlg5LxHiLNTPkkW0KNEm6TBEEFz9VDw8.ciRiGjWCSmrUO.S0pfUboQkElb26kW3u5yw89We+Lw+tOFidVqlW20sItf+Q+3HmzJfBPJKfBaLUxrUkwBZTY4jdoo3blRnrvfToIWyYZHEJvw1qZJ3wOPEK4f8iJy5XIDDvBl99xhoGKoes9NLw7m+9FZcY54KJQ1+THGruSsHZR4OeY+wDj6dRFYjQFGFPDACJEhhn8wPEFAu1pcZoVH4kZw8z75WF+q3uIUXnBQsTJVVjHrJigUafysukS5QeBdfOx+F9DW0OBO4u9+V3E6CSUA8cryIpECJBVutIMjd6dki4wRjQFGQfwe8W3ZNI48JgqAqPLfQsnZkaGmWL37V+jZNv7rkBQwfkBg38LbcButr3d0OQi0peTp7oCEDGkqvwAKBlLqzGEQtlMiLxHiCaXAsBQT+DAx+.L+ma9RFx26jMhI8y9.iKnO8r8YwSUwx6WwoXU9tP3T10dYm29uI+Qus2I7E+JvAcAVKJcvNdFYrPB1F+UGx0efKHZUqhZpFnNXzigHNmGhy0hj.9G39G9NNfD+raejAJK4Qm5XCxATmQFYjwgHTIchGJnp.XPEq6U7A4tWNNyT2vOm7Bq.VA0+J7YLh2OObOJEihi9MKRkkSn.NSofde9uD+G+I9YXOepsA6uOTYwMqECHvFdFYrvA0cbzhX7WaIDegUitlgqirR78yafOfXQcWd6tCh6yVpvRkyAgzpj6Y3k1glDPt5jDhnF2HcoUwQnJvTs5uCjPVUHGMPNf5LxHiLNDQ3gzsYCN0wONbPZ5FdeXhGYvROshE2eJVsJrpcuO9T+x2B66O5+Br+JjolJqqiLVPiY60eotlQrSryyPZv9yo7m5rau1k2XY9HZtLioC4.pyHiLx3PEV0+vamlEq0rrCoLAEj5AXc59LMfaiiM5HyZ9OKQ4S5m0+VGCTQnNcRWHvJMv4Mkxe3+reE1ye31g8ag9NkSJXbSzwvfLOsNQRFYb7ArsBWLDLZTpGgqkrh6ZHQ7DBKyehzzyvtRkOapIAWW3t2h+UHP4tj7gp9+lLpYoEQAxLSeTF4.pyHiLx3nHZvVTGLNGdeJqZs+b6zK7awWpkQrvJqfSeJgO4G3V3f+4eZXx9XRF1avqux4JKXYjw7NXnsDN5dDcFj85ENs88cduinjaGLcFG8QNf5LxHiLNDgyEqRcri.7tpgHNsKFBPVMXn.q5XJNvTsQbSFwz.kcorSyzw.F7LXavw3VPy0pfWqkVFWTN6CX42++qaAdrmD5GV4Fk3r+On0zLx33YDzSLgoqWXRIZCZI1qG4Fxgvv7k4TPaGzznF2HPIVPrIi3Uv8e7u7PaDBme6Uax01sc2Gi+07GB5WHgb.0YjQFYbTBsYCqqIEU6euKFzZyVcW+ta+UFUgWEBKYWOG+2+v+FvK0GpbLSmN6+yt.PFKDP6Q0I86ZvbsI2dOiitHGPcFYjQFGhnd0Lyyrj+UfYIi3BaMxLjPzkOhogHnXvpRTqzoV+kpUQWCI98Fmk.DYr1yvskJB9P8pJ5wi+m+og+WeNnp1JtTpHiLV3.qawTBAQJbNfQvkchyIg1WyUv7AgPzdThrg7MAW4vy7tm45na+3CcSZkVt6w3XluwuEMbu.q2yGJ8K7PNf5LxHiLNJgtzpYkXXpxdr+divyWVxd6Ux9JK4460iWXjd7RiTx9K6wAKJoRJwJFe..COMSYlyIsDKiYq3jNXE63272AlzhwubFmYlNiEVvuxf5k9Q38RCaiz88VDpBhcX9j04kCEaAAxK83YjQFYbXgvJcVsVki1CqehSIZEBEXUg8asLQe3EKENXggJuqCH.hshdhgQvxnUJKUEVDEfnQuoUHLq9S7WWs.M3hA.HPOENIofu1m8yAe4uBbouZjxBTbqHatgCO+f7LNdFF2BRZQoSawJdVpUf5qQrDXk1jzgx4CpH1.9QLxw7r+Z53uWuJJBT6vOhEil1gA+u0P6zokTax2WmtYbjE4.pyHiLx3PBy9GJEroKQDpLEbhW3Evl9EuQnm.EP3AfnvAelmlc+TOESMw93q+4+h7nekGgkXsLtwvRUgRaUCq3KEoAYavxXXXI8sb+2yeBW12yE5NDkllV1WFYb7HJLrqkTxipSgDBJ06Q6g4bPy+598cO5HbVi5rkx4GCVy7hLQFGAPNf5LxHiLNDQ5roudUaSPT+j+KrBlkPD7AKMvpVFbUWNr3RnWHXZWvviBbZJfZYM8U3IdJ9auqOI+OuyOAq4fVNIovqOaMlATA+PX6Yzx4gHnZEKoWI+s+E2KW1uzuDTZPJLnRSlvp4py5+9lLYoQMa1rSDC66a+60oa68q8wmFe+LgAYdKr+My2Chl42P4c1yYYyi6f0KgzkFaW8u2t9n81276GTyrce7BPF330b+FLeYascsyOMqeFd6f14uv90c80vN+Lr1SoGOYLg20m3iwRlx58sBFTTxd+ZVCtKmH7hkBic1mALhALt8bv58tuNn92Cnc4o822d6aV9DcP+1P.2bwn82053aEHVvH39OV+8QZWu2c9tFMKuy0qCFV63gkNyT691s2loi6L0NKfAue0vttbX2+iVaey7SNf5LxHiLdY.NIgXXJCT0y.iUBKp.smoiGbm74Ecl7p+U9k3Ue0WM+A+b2Hl8rOVQggx95LHCTKfvH.u325ofu7i.W1qoN+PdwcIiiiQogU98eE9.Ha2R1aMdpSBVduqDLELNDmTuy2t.vLePEJYbHir.5xHiLx3XFbASqX8uByjeqmsDiiA6EWBW0Uva+Ceq7Di.unH01.lLHadgYwuAgQwvR6CuzW4qB1ZOpUPRNNgWNGDnc9If17oEbMf1ee8mco6ftJf2AS7aW6eu1kCrS6qAK2Ae6067JIocWuZmeFDg7e2tiPc42z3Ua++stb0LeOSae8woaWantd1z5UyiW65k5euoaRztdqc6gA+9f6Qzt9r4wQ7syaWeMX6ilsCa+p49g6ZfBhqrnC7pv39ao.iT3eOPgznM6fsqaleZWOObWxn4uW29113Ur9efDw6TPA+lt0qnqkbDCce84fmOZhYxsPFlOWGZGzt81fW+z75t1G2taOXGZ6r1a2fW+zrbVeOll2eZv6W1b+xATmQFYjw7TXQQMEX6UBKpD9gdCr5W+Ux9rgGpL8PUkRqkSvBOyi7n3BiddFsbYjwg.bNVo.lBnP7uJ7ubuWM.EBViAqH9.ome19Wz7TE73cjk7QFYjQFGyf0y.R2ZFL5FGpmwsEUxk8VuV9eryOmycChrM28ihEiRgpbBV3od3Ggu6J+xwLAMTW3+KMN9CSqtCyk.FlVgmIMHFvv0R4g21MSZkd3ZHO78cqE41ZTtMZqQ33jHcHZasFcqU41Z6blzx4vqm5971Ls8CWRRsO9sSm1ae2ZKtc85f0OcueV+2DVwAUooGqK9UpTgvxZTgigWMv4X6xWyi2fZpMb7mcyw.oU4td+Cn1e3crPKdogUzpbQqOejgKzgoA41k2Au+R2ae84mgUOLrzqY5NX5GR2tONsuNs95sYpKJC69aM2+YRK3cu2YjQFYjw7FzXEey.LZImzaXCb.ivT0yIwoEFKrHK7bO4SQ3QCYVpy3UBPS927617GpghkCga9DxLTmQFYjwwLTqgZn6Y6tyxurNFpUfwOANi0tVdouzWgBwPgZar8N3YVQUvXomZX2OyyPsFBaxPWW4KnKlYlct.xvbYhAYd8PysOFjo31kigUe1sqDL7zu49MX8xvX3r492tbObFbmd26nFyT82ry8LlIWMXPLSLw1sqJLr1MCa+FjQxtYFusOMGye015QRdQ8tuCQpdGrb2t7D12YGSmC20RFV5Xnaen11XGS8e5vmORLAFmI2gYlc4DZ86Se.9C2ETB6e2inwLwj7vGYog09lVee3yMyOyjKE0F4t2jQFYjw7TD7U53eQgBCir7kwAEgpYwcvMJXD0E3ckOTZMyRcFG+CYX+SjFdztlDJmSFHZiu63WjUc87IjCnNiLxHiiYnsaUDl85dVTDEUrwU4sfzOufKYcreQIkI0tbYgvpFmHBFaE6+y+Ef9gYJe8w05CuPvzRGI9syyrm6+cyVdUcKhyVpC1OjNC9xG.SvWtikSMd7SSm1tjPaTyudx9k14Ce9sq7SpOgjFXkFOxotzPhaqfAzJP8KrNIGmHy+p1HenZELjyuVTTU7KY10tOfM8LoJ9yI0Sktvwn4RPea2Xn9yplbdoUGzpccgl0yQ2TvWdqqmrnTESufsSLnK0DJGtsOztpt9n18Pr9EC7P9qYdraWlHV8DZO1x9KhGe+2KpACE0KxKTfPAscyg58O74VNMR7bdvpKMnIJzt9JxP4lFsCqaW49Ws+Yqt5bqfghVmaGn3QWN6ygJBmWCWI6ZW1rca77ZX4c22tHd92+8g8Kd9Nd8ck65nX6oJRuRrt9Lfv8c7GmjJBowwo666Uu8MmBp0WuUWtUsJldwxs+3z1kQpcwkfKhjVVpxR9HiLxHii2PkXneANmKXFQXXv89bapWPkfXfr9zTUMYAfwuLNK3d.WXINuJnM0PXf9GNGoAW9+m8dyCyRNJOy2eeQbNUU8R06ZoWjDxf1AAnU3xfQlE4wFIPXviwxrdevHvXyb8i80L1LLHrG790iGaVDX6ACX1WjPHVLRBI.CnczdK0RfDRc2Zs22ppNYFe2+HVxHyyo158VJe0yQUW0IWhHxHy7Kdi238KHvDevyw.ZRALLfhe7b0LKPNUnu.EiZOmpWdJT8B97+c76ad77urVAWXP.h3e4pX8un1jkh4SA.U010rcL0FF1LCAI7nN+eHHsGItMlvFlGecJy+Usf6lt1kIqcLl8.mJjpCw8oQ6H4+cEuzjb9cPRAcE3gGO...B.IQTPTsCHk9ykQ5e+ZzInVFNbZpeM22Aw5bMlp0o6H1OxOllrqo.gjohFG8a0.FCAHGJjXDSJNup5lVc8Ij.ZxqOy16A1SQ0.YkZ8cE7IpJTWpdJZTBZg60M1TmDsQxpIuOS9yWFDjZ6YVYKceso185SW6S8rjY016hko3h9dRNmylleAoMf5VzhVzhCbnNiJ8u53AT5aU92GzFZRrwKB75sbRzKXdveDCNpRKiRHnt3eWDwGjoyANAJ0.YVgfoMF+JgzZ.aUP3FQvQlqk.T4xIwyePqhwsM31A8Uli+dHUS6jvwPkv9VOvOSPK541lfI3TB4+cOqqAVsbtPcS7+6XFuzT5qaXHFSre1.DbA8vFOMNDDw30tqOZh.C5At0bk91txvw2oAqfifOJGb7gnaUD2+j6ULMPhtDty2dHANQkp1+A0tlP35TUfjQs7FKOQlVs9iUQou8pfpfKi9.sHIJZq6E2wfwEzP40jUO8ayj4BGg.9RW+hAnGKmUyfBjELWLEk233Ugp1Eg7.ni8GytNKRnORoud6xZEEm2vN5.ACylb9uSr8Rjc9R+93L0JeU22Gp2hKjoDYOCwANFNVUtjh+dGifuue75YgKDDssZD5VwWGrVDMLKZg6yi2aGeNVrdBS1.BMDmYn75KRU.495ugnO5Wq5j9WUyNS74AwwllHFHbbcY8+h6ilFP9fWiBUroW8bi1.paQKZQKNTEpYFDQ0zbHZvDXNigdFyzTvdRQHH5xPfSq4mRwl2BO3ZtelXKa2+ReiRgn7rO8SmIrBCelmNFSfcNqAiE+KfEAk3KEqbgglrHOUPbNXBG3bXb3CjI7hvZj65hrKG9cCAuJ1DhUMDfqygT.zy42m0tdJd3Gl69luErgFnRAN4y7zoyJVIbTqDwJg.l5.13BdyGRPLfvzey4fBEoHvzWQIr0sw3q9dXqq6Q4IVWXQiZDFY9ixQehGOcNoS.V3nHcr9fW5zAwDjugL8W9q0VpJFW35YAPYYeAjIw+W9eWBLu1whLbncS8BcfhRjR7AZUV.26ZXKqc87Pq99naHX7BCbLmvwwnq7HgS5DfNFDi.VAwZ7ciaD.8LARoCYhR+4Nf308pxeXvh40GqwGfuED6TyBd9fMqBPz4OmwABUTBaYaL9pWCaZcOBaX8OJFDTAFZz4wy3DBWGWvnPWKhAeaP5bWeff9y49G03ViIZ02l5GPTomUZmC1x1YhUeuLwV1FO38sFrNerzNCrzUbjrzUtB+8CqZk996cjvfnTLgAG1blil1xEjF.IJPOGRQoeFwBRtwOSYM1QswAwJ9m6zwfZsM1zpA1Hg93RIgmCDttNfxUNLoQh.XZCntEsnEs3.N52uSq7g0oKvojC.P+LSGgKvZTNzZ+aMENqe95kzKYozA6rG7fqmM8ctJt8u62i665uYF1oXbkXMF5HcPCr9UnNtcmiBigdFCG8Iex7LOySmm4E7qBm5I3S45COTHIa3pETsIVJRu.tdYsV0qvw5+7WF2xkdELudN5V3pBLKTmi+tMSJFauqkmbdc4M7O+QfQLPWKzSgIT39eHV+W4qw0cYeC15CuVrtR5JfMLM38TG2JNJjNrhS4D3Lufymk9Ze0vQrDXHKh0WHiLlKZjAdqOHrcT.OvCy88o9b7.23svCc22MCW5vpNFx1IUSKTkenBEVKG4obRb1Wvqjk7ZNe3vWBLRGjN3CxM09LItKQf8SQrAFTcrlu7kyZ9hWNKXrhT6RUeDOxcPBUUbB7DysKu1Oy+D5bBbNNgC1kCtiUyc7I9231t5qkdaYyzUU5nVrQViMB2doRgA5rfQ4Y9BNSN62za.dQmELWPFx.pID2dYJn95KpvA3xBSTxW4B+s4v1YOeVDOLSE.HNefvkg.pi0GUU1zHVNwW+uFG2u1qzyzpwul.B07ZmGWXlYL4AB1SgwJgmXKrwu5ky0coWNq+tuW+0QGzoSGD0WhUU4Ggidcrr7S5D4E9pOeV7q6788WFNDbcpRZPjHe596kZ5tGSt6qr6gZryV5fwTXrB36bsbmW82k685uQ1xZWOcbN5fh03UedTxQ8bkd4mIF5rfExwe1mFO2W9KggeY+RvgsHeFd03mw.sw.0Fbv04yLVHn5BGryI3S8a+6vgsyBlegCi5kqgljPTXfzYR5YBKryNVNsW64yxe8W.XxVyIw9KgeWwfDu+3q3u+XQ6pXFM.fRTLgIxpMf5VzhVzhCAgAlgVmkeQfMcdVcRdDwfn6oPuBJ9w2DeuO0mkUeUeOV738XwkvI3De.0VKhyytSbw9HF+hWprvGX3tt06ha9NtatxO8mgk9bOIdIugeCN7esWExvc7Lu1kjrVlU5FsPYhGXc73+G2HGdovPEEAYC3YXNu9lmPL1ZWCO7b65CbnyPdlUexMy87I+b7c9G+3b36pGKqTXE.chAXkhiwfCK8zR15ssZ9l248vN+X+y7K9VeibRuq2FLrEFxfwHIoLPoBiOA7fqiezG5ixM+UubNhwJXgkvIigtFKhKrf2HNH.eYsnGr0aa07Mti6hcdI+S7K9leCbRukeSXYKBoKdl1mhlqlZgkBkc8vqmm3GdCLzDwEeludUa+xshQiEWoxiM2NvDkHcL9AG73ahq788mwZ9VWIG43krJEFVD5fIjiRBGSmBpgBmvDaZ6r9u0Uykb0eOVwK9r4U8d98gS8TfgDOqsTEy0z1Wnvwi7ebcLuc47CDKN88hO5lzT8SL7LeermbHKi8BOKupMll6epoW7BEonGLVIq9e7R36+I+rL2mXSrTmxI3DlSP1OZOWJ3diJThgdi4X629cy23tVM67e5elW7a42hS5c81ggLPgFV2uUKpw8GZmV.D0yFM8bvStUt6O0mia5Rub58.qiEOQOVLFVYPdTF0eejFYHFPU+B8bBmxXaXy7Xe6qlO6UdUTrrkxIetuTdQuq2F7LVERWKh03G7xTT0ZNv4j7ylvw59Q2DCuKG1dEoxQ5d73ydhxNCXbqkM1QX7S6456uNjsu10lqwBJad+gN4xrKRBhXPcPud8ZCntEsnEs3.GFrun1ue0Fe38feeT+AKWwn2jkpk8emI6rFJGkkvX.+rGlq6C92xp+2uRFUgiSDlKF5JJVqFH1KtPkLXRQsBnJcBSAZWwvbMBKsvwNto6hu8s79Xo+e9b7JeO+Av47BALHcjP4QqEHUy2k07EtcbNFwUxnXYjnyGHBhoJXJ.uDCBnPDFNJ6gc0Ctm6ku964hY62wcwwKVluUnq5p4u2RVCrfxvhvhDg4YLr0mXSby+0+Cb++6WMm+m7RfibwvPc8A1U3fcUvF9XeF9Ve3Kgg1zl43MBy0XnKdIXX7MenZT2m9yiAkNhgEJJy0zgc7jaiexey+H+ju7kwE9Q+eAOuSFF1gZMS5LbjBnTHnUWktNGyonfEPdmIs9OkLc6Jd1kmSQgevGSHv0bc7I+u9GwvO4l3DsVFwHzE+.Y7xcP.wUEHuJXEXDDNBwvnkvltleDWxO354s9A+.L7E9Zf4EYyTyz7ZcentluaqvvkNlO9IYfTeG.KoAK3GfhegephvvkSfU0rdQQWGI9uGDLPQArtMv24c+Gx59gWGqREluwxPhiNDGbaIpDlqknR..F13nqXYthv1dhMys7W9OxO8a+c479P+MvpVtWtAIc6lIEqHi6oxQ0806w9Ps5fIJgc0ic94uL9R+k+czYyakkpBySftVCcU7RpBPLgfK0pfVixYpqQvH9ATs.wxtdxMyZ+reY93e9Kky6c81YEus2HbXKDFtCp0f2ATpD0U+ARGO9lzySFpnj4ixBC512unfi8WCCDIKH6cYfcT5XXW0fojfS7DWyCwmM5WfvNecwAyovwBzvMAMtGou.rMPoSYWEst7QKZQKZwtIlsS+5ANWJcpNyo.XcAcJNtic8MuZ9z+IWLK4w1HGmwxvphnk9fkTuU9Ql6DnNmeZfM4R0vGfiUKoiyxH.KDgkpF1vsdW7wdqWDmy69cxI7tuHuzKFxldI4T4BHUEbvpN55bXDkNNmWewgzqtkJcXpoEJlggEkg60wOs82yZ3RtneGNhGci7LPXn.iXZXJ2cIW0nZwRFGxSWmRW0xvpvhUgG8VtS9H+xuJ9c9Deb34dJ9F8c0iez66Oi68y7U3nKg4YLzoHKPuffPpbui5NghPO5hP2IbLGwvRLFV+O8g3RdSucdGexON77OYjggFqcyZnJrkP.akJVE53hAF0e.kUwPDFvUoxbIL3fK6J3K8Gcwbz8TVrXoauB+hUMpsaMZyiA8oSPSvAmuXXmggUX9hvh1UAe5+32GultBK8W+Bf4XQ5VwZ3TB04khfyKIGCJ8s.DiLvKVT0gCCVQQJqzO6zAiJvD8fGaSbou02Aiea2IGqZXdJXbEglsfLoHr3aycOBm5CF00i4F6ufgG8VuStjW2Ex63i9QfIJXHmiNhrOmcZAmmc9dkviuYtx26EyZu7qjUVpr.i3uORqF.OPVey30yv0HmDp6kXUvpFFxUx7vvhLB6rvw09+9ixP+fuOut+hKFdtmBxPNDqfSl9rWYLY7fSwpZ35couMMaFHpF7mKIo4NFnSP1U9wmk6pG4CPN69CEjxRrpiNtnD3bYCrILfqbo33rXTubvZ8g5VzhVzh8HD7kYw4e.6r1iXy85Ve.NU9CrVaahLDIh3WreAT4WpwO0wfdIsR3ElwEkXoWiuOve2GgO6672mU8DahUzwxPDb0WQAwG3jIaw14InV5yRz7mDu9XUoxkaGBkkYLbzSTv0+29Ovs9G9dgGeygE1lmgoJ15bgOT6S+0O7ZjLEHtEEu2CiyqE0ndT63fQmn.t86hK8M713HV+FXYVCcDuDHhKNNWFqg9AOHo5CpAAq2nCvwPRIGYGKKecafO8E91f07ygGdC78+stHdv+suLGkJLewGDahH+v.T7GCInqSeajHwfWpt9YPw3bbXVCq5w1L+qugea3mbWv3E9qcDmMhb+xNSxBAl4xaeMHXDAingOR3Zq2ml88k8r5Muwcvm6x4q9G5CldInzwU5ch4XaSnrJZE4dB3u2vDrFNiePKcUGi1wvJJE9xum2ObsWmW9CAOLVzJ+wN5CxU9kbC2vI3W6o1tjOAaBJyuZ.QPVPq5f6Ok59hlz9909m7AXra6NY4NCyIL.SO72SfDbkF0OaMBtJ8IG5u.NrhRGQ4Hrc3HejMx23M9aC29pYd8Jv3TbZiAUVq9O0HcOcxGmybFCTTJCy.UAbK2Me8K7swS9091bLhvBEnq57O0Ib8xDdRTrOZU8H.iVccUjT+VQT5pNlmnrJAr27cxm5B+sgu2OxOP1h3ZmHLrlfivjp2I+C2EGUb55W0BotL67EN+g9sweOc7hCdURgHGl8.oZJgxrBwnUF1r9EeNP53GaaUAGl1.paQKZQKNvgo9Qv4Z7KEXTltXcSUz.gsIo6QM5C0YApg2akkdkvtJ41+f+Mb0+8eXNlBGGtCFNvVyTkbMlsPzRFw4XoN3XUC28W7R4y7VuHX68fhJVv2af7iSLHpNnLudEb6+OtXl2StEVo0xbKcHtxjVbmMGeePoJCUTvJEKK7I1D+6+t+Abq+wuedxu+Ohi1YYANevmIaGD2L97jGbkAkQbvQ.rnmXS7Id2+AvSrInn+5ZeG+8.hOkfLY95+2e+bzS3XInLjygkhciAPhO3SE53JYwBrxwJ4K999SgwK8NLwdRgcJvfMNxoX6UAlnjG+e8yx8+MuRNBwx7IWNP6N2W3vfigK6wJEKi7jajq8i9wX3dNOip6kYoNs.e0vh1qGv8+P7Qequcl31taNVrrvRktgYPXuQRiINfpNZAyszwpvvR1vl3+8a9hfev04csCmKIyq91+ZsAQgyjuA68ddT0wb2eWiOGtMf5VzhVzh8BHpIYECp3p8YfPy225LpUwLWkcxAPJiIlyd0t0KB7LynT5m52wKXSeoKia3e4eii0YX9.DYXaPw1FYpMgFAcmwLMFI3.H0S1IVQYXJYElNH23cvO4O586YNqzkXCpel45O397AUDa2hk6XFlqhgbOKwKnmiG6tuWV3vcw3hdJrIMCCwLqWVqUs22Vcb8WecgoC2JNVVGKieK2AO725p3HrcXXw4sp2T4nrh8r95eDyDaAcxFlIfJakyOc7FTVVmNLm66g49+6+3v3d1QSK9NhIuhlW+b80l429F86BkU+0Xe+sNpW+pKpifUq6uyUyLSX6aTuRLUmNOUKRVaoiEKBi8.ODO4W8xSVgXNSyMutK6UCcwjc8MT9iZ2snD13l4a8O7Q4nKMLWWFK3hVMyGo96MtdNIyXU7ZhnEL5bFFcqam4T3vDlACECdKiINiUMyXe8iIewygmoZ04mAfGeibE+t+gbjqeCb3FKcURR7voBtTVOTpc+S9m71tA19Ee1G9YOvfiEKFdV6xwm7c9G.25cCi4kdhnlJFeCyXVJSbNo0mlO+4fCbvWIpEsnEs3ovX1rXhZ5Sy9oCMJQfYFKMR1TT5BA3FiNzn3eI6stZ9z+I+orxRkEVFzi7T9F5YO5yKZcJV0w7JUVUoga+KcY7fexufOn5A3Ar6NnuU0uHXbJcJ6wnC0Ir3zHoIy7x4Lgk7ZdTbXwZMr53HP3HECi3bIF9iSI9jU1FD5KETGBpFWICUTvQ5Dt1O4mEdn04GXzz0mPnV.dS2fw7Zq2esXHivb6XwVVjRnN64vKAhgUGKB3q8Q93oAUs2ZVJ1CJZPA7ytzuAc23VXwpmEWn9rFr6BeWAe+i4OTGlavt81ac7Smm30oBfcVvU9d+SYm21cxJEKyorLc8Mts4e1afXBqY3xRNbDF8I2Lek26eJ73aLLaDtr0LPTpW4YiS+L53+m6CXlduHZCntEsnEsXOF003YSLvWMNPldpqY3nlXapEViqDiyE7c0I+kLIlPcA1mDCjVfX9iEiWvU7GewbL6rGKLnb6XYHxzTeZWtOl2pX1yytV8uOUezRe4M66M3XNFkkpNt5+9OJrl0BEwymqwmnVyyNyZ7Lz+qypbLjJs.asBKX9yitV+0KInEFOiZg5Py.YavTdZFEx08IAVtcJc5JHlLcmiCh5yFBYVupjMSpctwLBzGiwYZ61.LWCL+xdbKepOiWK0Eg12fTTxK+4sOlFmilZdt567AN2wBCORzCC5WtJ829z73Dzxbp94udXBKbPQcLOqkwdvGFty60yboDyrf4WWyWqA6sfqZlMxK2pCF2wcbMeOlSVV0TTSRq4SFS7UU7pYpwO3kP4Oz+2f0KaHqR2gpzBdk1kqy.d5vho+YYXP2OJlvcx30Y+27p3meEWIKU5fIewGRoe1ph2m4TpkwGyZqHWa5SxLXEaGhWCMQYNoNVVmNz6luKtu+9Ot2kQx0wdllu80oo1l8NXCsAT2hVzhVrGf8LdjllowMWtGYKunU+StUFVldklppBFexVoTLLmS+4G0RPHXZkG8RuB13scmbD3Wg9ojHwdQcLWKIcnZclvvgwUxhECKXCaga6C+O4eQqaxL7ucOTmAZWJ397fhaV1loGylHcrobZ21Yx4nIq4ZXJ7MNGKP5v0coecXb2LS+Oy1oJOMvmJseu2hA0716gzRVZgx5tpqIsHK22hoo76.lnG2+0eSLGqeFghqGAXuy8GQM3mFnY1yCl1iu1+fKGDLpCwovDN9B+E++wJJElWP1PM6mWavg6kXnN2N.EQYDmq9LqTLC62dH.ZCntEsnEsXuLhLKIYuzyIgWY126N7tVflwTV72qbqA++1OE7J817VYjBWHM.Wo80lL5oQsPhAL1Ph.Iv.agC1w37M+HebVjQvnQqhKKX2L2wHc7xYhtFigCPqqAsl5BqzdCVLXSZ0LwzkQoaoxgUBW+W8qAO75844astdY0rOzn95YJqNCfIWAHd8H4dFd1iiZTNx3XJP69XfOvLWl1P6iQS7L8QfQey.BVI86IFwabcKddCLR5YvUStFQr8KEjh5XDT5twsB+nazaGZXxBBuQPW4LJpBULY5ZTdhW+hZ8ljGnmlyDc.LSGO9QlYab75iQWINODJCoBKrD9Y2vMCn99+8MyDQFR2KAYvgUKfmg1a7VXN8JniD6KKD8W656P89KUyrPr9Fj8STa+ouOx2q0eebLXcJoozbFThJpVQPqteTC0KCAllGW4I9pWAi+PqiEgW1SHNbT50zezcLh08P+yIcMTLoMmwYiIxpdkjNR8IcJiXTF0Uv2+C+O4GHnCulwknyeDV6H80AZlMHhCT3f2RVKZQKZwg.X53VYugTjSAiU5fBG+7UeOLhXwNMGaQDJEXBfkrxizG.Qr.WJv0cyLwO6gX9FKlFu3a1w.mo1mzBbKewS133ked7L04XTfQ6UxCbUWKLQwLZl8chaR0kdS11ZxFc0FVe.BpS7dr6z7JxA4hH4eWsyUHXf5RYXpCPnFizMz3c726hxnkv5toeB37Kmqo5Z2rgLvAlsBiCvxLn5wrKjhZsekNlmCV6puW+hRbVcj1G.GPQAiTTRWWkzHx0M+LGURvPkcu1pcGnp5yTmSTv0eYWAKJLKTV0UqeT9+N+2mr5Qd8YpvflcECN5pvBDC24U8cCZluLIosTVK7PPzFPcKZQKZwdA3YyoNitQ+oELof9pEjhpIcR68e2FxbPr9Of2+X6UxNtluGCW5nqInM3bF+5iQIGkFXGFXwG0JiBYlXhb4AtpqkCaBkgK8rQYD0q0W7tLfiROCaQFmx7QY.JC9uZuRnvIzqTClBVU.C4urNxHVjgybMY580UGy0HbCesug2B0b0YtOUOypeU+w9YHL5etIFVCs6QFocp.h0mlucBkZGJ0N3TCHcRdXcd8v2Na7S0P35SLH4lKpqT4NxrlZoTMTVXvUJ3JEzblhcQFaKyRdNd+0kfKjH4idPbzQElSYIaYsqGJCrGGcCFpXV1ip9lt.S80Y.tISvF+LVn.NeF.zeEQnLDqVgSorvg2xf8bTlbDhFKxtp5Z8qSFw65KcUkw15V8CbzkuvT2W5xGSBTXs2zsxbbUxcop.XCNAhFtGtgaz37WWUUnLb+sqTnWoidkNPCZKFukKFutl5W0v0PlLMt2OxXBmfFjcB7jake10cSLRb1YhIfo3mzZsvOPxn+s6ueMN.MCkpgdkY8cc9yge1l.mVsTB0P6BRj8aKU1Roi4ZrLzF1B7ctFnL5tIwfoymch8ZyGw9bzloDaQKZQK1GgXvytzT4FEJ.DCjItfCEpjHPxUOvqUVA7twwN6w26S9YX9wEOX9gaRN+kBrCqxocFOeHlLXTEJcbKW00vBcduYdP6apNj+6BTJF1EN1r3XmnzqiILd.kNpOivs.ig4o9LuVTqx8c7Ck8pD1.LGikG5NVMrwsBycIP2otM1nfaRnntojKhub12tXnm0x1vw1zRFKl81DAwoLGWIKzXX9FCcTOyZoiyrf8dmX.SG1gBaRKYLiPgQPECF0wPpx7TCy2HLWqEaY4rZZMD0wbTCabsqMseUI+hLraDWxflshRaG1lBaS8W6K63CKynkLG0m5ommpd83SrceloIci3SdMicy+DF4kb1SeDj5d6EnXczEkNHPfQWSSI7.o6uS26FFTToXXmFkcnvNzRlnqgBw2ecHmi4IBKPf4RGrA8YOatHYlo06RG67ptFFcrdLh06zLyzYeRDKiaD1lyw1EG6TfxNVL.hqjgTk4aLrXoCcJKvNCHVNZmkcTGKrWIOvMdybrupy0+c0b2i5W5O31eO7nMf5VzhVzhcSTwxJdsURjNv.6hNCZVPuVQvDYQ1UoWxJOONnGXhKDrvKWb.8bv276xS78uNNFw3mlzTfjAVTCrzlXUEkBivVTGG4IdBPPKt3DXyaist90wJL9TzKL.YYD9omsT+wsDCiUJ7HBL7Y7b3W9M8axRN6y.V9xgsuM140cibyW12f64ae0bziWxREOyTZl+K6BKs+XJpFmOXE0oLhnL+hR3FtIXkmKTiMx3TuW0FEgl88MmxXAGh.ZncVUkBaGVuqfctjExK9+62HGyK3LvdFOeOqy288xcbYectiuvWicswMyxLFFN+3mBrJTFRyJQ3m4rkarrkRGOpQ3nOuyky70d9Luy5LfQmOr90yF+w2H+nO4Wf0d62IqzAiJA2S.oRuwRU81e9iA2621tpx3acqD0iOhmI49m57pxUdqpjZWi5QOn6eh5FlDKkatnjGZnNbF+5+Z77dMmGxYeF9x28deb6ekKievm3yxwNtikgAqD7fbpxLd0ttDt9qNe5IuiHXwmzOh89pOyDlzeaein.5u+keVN7ypQhE5X+UhAVqfBpXCMrF1gnrVEV3y6T3beyWHK9rOcXUqD151YWW+Mw09I+Lr1ev0yJbByyX8oT6jizPZAKVCSwBJMelHpKqGgG6dtWFUU53ZHYHmeDKw6u0J8fAFKNLrwhBd3QFhW7a4MvobtmCxYc5fVBq49Yc+3afuwG9iy3O5lX4heMJXyrtwZoD7ZvPWmxhcVVyMbKbrDyzkwLDaL49zbdoN3ls51.paQKZQK1svriyjpERF9W5DVkhlRE+bmlqG2.KnQ6qpmC9OtA97u2KlinDlicxNKMggwcB6XjtvYe53oPRfRkwum6EaYIV0FdAVtViC+6Fu+RUkcYDVmwwy6W+0vI8Wcwv7FB5X.KvB5xbeU+x7heYuTN6uzWiuvez6igcv7LfIFanHoieeZCV7ASMGUY8q9dYEu5ycV0F2DUCPHSelhfyzgMT5Xdm5Iyu9m3iAGwhf41E5X8U9y3T34bJmHOme0ymO8a4sg4I2HGgI5SvyrWpGUL5NwwiXM7l9K9.Hu9KvewanN93CF8XYIGyQw4c9uZt8+j2Oq9y+kYHSWFRjZAlLUPTXXf6ZM2Kurnrh1KqCUUUbFKa243wrva7O+hYj+KW.LuNvPFfR3zNYN0S734TekmGew2vaG6l1JKxZ7dZdiiEzP6tPXwf1Ai5nqCvEq7KhjAC..f.PRDEDU+SRPjBCHPs8tXmaYaofjhynRjoZUUDSVpvNvjuCCEFCOg1iS8230vy6O+C.yqKLbGO8zyeILmW4Kmeky4kv19W923K+W72xw3DVXPpMCT25SJldWBBWIO7pWCK.eB4Y5N1RfHfdFgMUVxNV5h4c9o9Wfm6I5udGog9zNYV4y9D4sedmOem2xEwidq2EGYmNXcLiX.23f4nNV8pWM37VEnpfJM565WkjS6w6fAbnQorEsnEs3fPLcKvKUb9WhlI4AqBCUDBRdLGLl5+43Nutgmn.1kBauD1VO35uKV869+NepK7swB13lXwVC1x5IViAqwRCnBiqJG9IeRvRWj2t7Bhecsq49oa9q.LRlFHqzrZU.uBXrrI0wRNmW.mze8E6CTXHCzwfZLf0.csv76xP+FW.un25afG0pLt0qgRMnOzHC8QMaiQRNSPGDliSXs2yZ7D8Wq7DVXeMVTWlr5dsf2hZPMYcWNJCsIOoQ3W8u5OEV0g4GTf03WPehu9vbrvYbx7F+H+crQqgIP7LPhYxWzlA2dHeANtAmxI95eUH+lu5PvzhevGwbA+HBrvNbp+0e.V9+oWHaPKovRP6rM8g3nVri+dPw5JXcjFTlnAWggnWCm29QnEMS69Y+0b2LIFnnAgcIJq0.ul+6uGF4270.i1A5ZBGBKzoiuc74cx7q7tem7XcE1kH0Kuo0HP75Xv20MUAQZDgMt9GinsHmecsZ3L6cCjdfJKQgGbM2GCK1v41jr2tltURRK3H3LBa14Xwm5ygm2e4ECKrKLbPqGlv09gsv76vnui2Lm9E8l4I0BJ0JYjz73Vk0UCOyYfCjneWoI9Oen64dYDmhTpMbCDWvkOBsAZkjL1gHrtgD9M9G+agS6jf4OjOXZq328NVe8X4Kly8C82wlOhEyVB5q2KU9r6Ox6CGt+2.XQYHUg6cMduGmf+amtGuwkDInp5X6vAYnkg5VzhVzhcKL87QzbEzCvvNkc9fODO4G5RXqC2gwEsR5C38tXqyvCee2Gq6tVMi8fqkCeBGOCDlSLgLfjXLaxfJPYfgzWzEb9vPVR9PUILwl1BchkKsgloiAREK+gEYWgSYGV3beSWnOX5tVzN1LcOZQsJhoChS3W3ccQ7s+reNVVOk4NIsKMauDmxbTCSrkswdZfSCp8WMBasP448K+xfS8jg4ju38BRPvXP5ZftJ7hNKdluvW.a6GdCrHCzMNYzSCKbNgP6kvY+68Nf42ErVbFEIpsdQAiAoiEoT4W7Mcg7IttajEfRWc54XNx1uEIvdtWCplA09lE0X+V23fQpufSX6NE6y7nYz2xEBiXvMjMIIoXeQoaGXDkQeyWHc9LeN1wC9vLeU7RMZ.yJQeZb2nzQL73qecrLE12x42z2HzIvpabwzk2jlWWz3u6T5IF1j330+a8aBycXbCaBruFZqjfAoLrE5Hbp+tuctqO+Wgcrgsx75HzwUslKlJ3RJfXv2iHfevpnLwV1JC4DLYA41zAdpM.cwxXnrjS8TfWzYBiXw002Ax2qrzeB510eddlGEm1q8Uw8eIeZNLIe3OSND0QGwfQKo2l1JcKCK.QqsgC7juOSayxATzFPcKZQKZwdDBSUKzuVQiKnu.qlhpLWTJev0wO9e3RnmHTJ4xdHvlpCrFgkHvbPXDqgNNuSHf57Za0DYXLS6zwSq3SjK6R.cgKfi9U+JggMd1kJUvUxldjGKEHlnDV4+UxuPffmTGXjULTBLlAlyK6b7xVvh+k1hoeIFXTXoKji8Edlriu20whk3hNJxttVWZIJn3ceitpxDaaag+V+g9LYZnsxoEBK+SmfQL3Bdrs.LgnrMqvy5rNcOighs1h.M0NZBzf0wvK3U+J4K7iudlu0vP8xOgw1e+uF0drDzC5tTkEuxUBG0JCd.tmsWWLHrvgQvAcD3k+Rn2xVDisgsvnRVxWVy1Neia1OC5tMJSHxFbTdYCndvWQ9Oco5gzmVs0vgzvNQ4bdyWHLmtf0jbkARaa3DYsvb5vo7K+xXMWx+GRL5iCiZqEpkSqjAUrbG8Mbu9Jh0wX+65Z8dOFJAM6FO9wiakNlqu3YiA6EtOgX1uLz9YrLgQXyc6f8kcN3K81zwCsR60hQ7GlEu.dAWvqha4S7YXXI3G7gRgzPyzwqkSVbkR5KM9F0Rf0sdrpKr1M7CZIE.cRQTlfbKbDcUncpNN0W9uT35suMItVOhs+JkHFCLrxo9x+k31+XeJ+5FAAStatH062l5OGVSISrssS2ROC9S2.U8KFyCBomlVIezhVzhVrGgoizj5YiLGCKFVh0vxU3ncJGaI7LJ7+7XJEN5B3XUgipP4H6UxnEELhy48NVWQ5XN0vvDVgmPJ4jO2yAV1BgNgzUrpfCdh0sN5Hw.opBjtYYOBGJiCbLm3IDj3QtFXk92OCvPVVwIcBzCB1H1jyNYUxjAFQD9o268LM0woGMYBWUEmHrcKL5IbbfUHOMgjmYJgf0x0QvtpUx16HLQVfeSGbhgILBK5nNJefBFCLIW2RGuNFV4y9DXBHaAhM4Xfr7yLyQMlIH+50XBbDmxIBiXpV6k4VDXrrHJz0vuvY97YBUpM08CxCva1ePjPJF4.8b5mEz2fb6jld2bDiqkXWznvhGsuHrxcwGEvIBXMbrmwYvNrPYVavL+Z3jDFWX7Rist06UahwTqMd55COgpb7mwoUstKlLXEniE4jNN+rxjbrjoFdId4vZL7.q49SWumr58j407GLgVFpaQKZQK1SvfzyXjgMIi4Zo5kHIOot16Nzz58QRrhII415c8gH62UdibsfdSuTxvVKcrkCag779cuHu1li6WXZhMQ1eEAm5Ht55qJ+PdpyFiEmZXjEr.hw6TwXUECedldcdF3Lvvitf.+uULMVEHtE04YMyodFLMBHNurWxN4gySplRtlfcIx1hNyfewE5hBKGSfMbCEHLtU7NtPnD2me2lmvJTfy5zYWc5PYg2WdMAV9zzBMsASh3yaN6RfS+ze9IVvygjoAizrj2wR2QWHSTKH+p5oV8GC+vG0jq1LjWYAidlD0r8zebLJX7FyseeZLCGQXBrXV5b35.chAXYh74mwnazQOL.cLzcQihyXon.5Xr9id55dblbByRgQvEt9n8sXLc0OO094dHR8ape7iCBHE3oPCIqD5ung6mLNDwycZoX3nOoSvyTevq389wb9osxAQPUXQixDhzvyvG.yt4tzReAXFmsh7uHq+sDF7X9yLh0m7yo5suR0HTXgtVegJIyr3QNzoMQH9BVf+9PU88Aj9ynkoYXH69KQvm4FScS8LP68s9AMFTee5oyxPOPfVFpaQKZQK1CvrWWeSxhGZ273lybl2AKrrSfMHvK9s7FfegiBrQYbTMmw8YIWy.TZ7AJNie0gXBCZXl+pl3Z0ymBimw60j+M0XQUvIdWXfUr7Y1KjE.wPo3Ycdlp+Xm.EFghXbNC.Z7+Rr6J7LN9mEkNMwV+9FL6e0uOwQZvYp12X4u9g1OPpQN8SeVRxby6CNXgRxYZv69syIg6QloNwSn+0Lse09S3fYz8HpDFvvTXqeS5wm3y5l5q2w1GG6NOyc+CZYntEsnEsX2DRlFOi7bBAlmqQ6SjgoruO+3j4+s9uutVCYRzfXjgYbAlgEnm.OgqjE8beNbB+dWDLRWu9biLDNKjsvgBHOPjo6c+N7YyMlB4Wr+Fd1jgHg0kQ0NLfKOo9O6+JdSIpXsMx7HdFPCNAw9VSsqEs3fKzxPcKZQKZwg5vHTHJ8DgMfisdDKgy+CdwvPcP6Z.wjMMugEh19XO7ceNlAwC2TOlRXZ0KmFGRY+E5yucM3kSwAIA6OcHWStI8AKjRbOGnkAcKZw9SzxPcKZQKZwtIpBXHpM4nliiqD8lqJoAqU0DQzM+CC9WSGGiZBVrkC01ksT33wGwxq+u7C.m9o.CYRrF5KuNupGeJB6z4XPj5lzXtqgCBXBa8AIA7kjCZyEQYRqzUaGjMCEGfK+dYuFcxlJmRQP5aF.DclaWesnEGJh1.paQKZQKNTDp2NxbVKSXsrAmOX5eqO3Gf49e9kCC6S1J4ov2p.cLHyXQddnMh9osSqRkyGLI2kZAflsv2B1+8gDXuclYrEs3PQzFPcKZQKZwtIZt3XDM5xE4LUmwzXSeKl5LVmXfroe.m99Le3U.DKigvi6JYyKaQbg+U+YL2ekWpOaEZrHgoe2jrqKAexd3fqfJ2afburH5dCMSrKIBpG.CpGHPJPTUq9D+NolilCbPCg5UH5y5BAO+PpbCBcxW7XQIi+Tqdfs3o6nMf5VzhVzhCxQdhrvIPgXom0vlKJYiVGq5E8B308+7hgi+XfQrdaeKDLcL.mJc4Zfb6v6ovnJS+EBvyzPBNGDDQWTxD4gKenlzHxYmdfdi8AAsysnE6qQa.0snEsnE6wvE7LV+7zGs+3XJDNwLsoJioMnEdVSlpUsxt2RIXiRksZTdBwgdbGEm2uyEwg85BoV7vBPL4EwZTIAYZ5VDudhODKns8DjyTcJMPeP.C8l7A6nQubtJ0umb4vlZo9fjqcU8gq6OwU8eCYZQow9bfuouEsXuNZCntEsnEsXeHxCfPUA0HzyHTJ9+sS79tb9OAePS8J8AmLAN5ALdYIiMTGN7S9j3+xa70ybecuZXNVXXA0Z.LHS6bo6x97zGzLoYbPGxJbGJjU3lIPy5K2xRcKdpNZCntEsnEsX2D4t7gnfqgTJLgLAnjog4cUnrQ0wN5HLNFJLdFr0fWVi5yLdk.EcrLtENlS5jXzUsbd9m0Yxw9ROG3nVAzw3SdDcDvXPpk8wB9uPJchEytHQFxepmFVyCVNT8qEPWZPMGDEUsR+rOGwf7z1CFc4iAgIqXkl4l8QkmVzhCjnMf5VzhVzh8Qn1z2a7LU2yXXYm7IxE7G96CCYxRK3P8PMLvpVNrxk6S2ycLvPc7AP2Q7I+EsLDrdUpHOblOjwKi2afYJitGJDHWKStsnEGZh1.paQKZQK1ifmQYnx8BRoT2nEnINDrHhv3VCxxVH7KdVvb5BCwfo5KsFBCN5Q5mwExlCMnW0Js0FbMjzwyyLs9z7nzD8fa138yLwL36NHaLRSVwQGv2oQkOIULUev70jVzhYKZCntEsnEsX2BSOemIFpC+dopLgn351AF1ByMjICS1mWfo4ryghBD8S53AteW5n5bkun1lhHvzm5jnbmothwScpwGBfCxB9uEsXeMZCntEsnEsX2DUD+FRk2MXFFoz65GtfyaH4Ryne0jpM7kZWLgrnNDQp9cLdaKNQMcLHZWf4OOW4w8qeWEwb.W+s6swf7g5CUf2yrm7uqYvoGrcoalPfd9rDbnz0lVzhYJZGvdKZQKZw9HjaWaPHLaIDH8rv11hACmyRcd.xS1+9fGr6pd4oX+lkQk8zbUurmi84ynQcuVeZwAcWO2y837Yi+iOy118FqZfYZgxTeQ.OS2qZsSSe40LKO9yJrGdbaYntEsnEsX2D4t7gmhTOyyRLCxoAlhMdYaTCoT.9jGnRyuIpQ63C9M8QcYPdIgnGSLBl6FI.P4jnq3Ll0Yl79kAmoGqJ485eWTSJSRJQu6dJNSx.dIquMyKUFSZ2MH0xPkId5yDhrfn1T43.MhEq7w.s+blCDMLyJwycidbJtTaaduwlamLv+diEaq3B2WHPHihFGToHZtSVG1dByzPtjnN3Bo0rvTVxLC39iHZrHjCB7J5a8MyXp8e+UE7F5iueu2lBkvVpM1lpykngqARV6asaGaNqVwiUlu12WMqR1Zw6c0zeKddbM5q3FTiyTBuMXNIYdVM5pQMOng1UUqeOGwZpe+cR7Dn096Uy.VkaI0+QuEsnEsnE6iQi.COfsprpmNzmMPzYoGImdIOyXJh2mGPoDCFnE6SQVpG+oSyNP86O12FhUyA1LHr+yYalcmIQmEsNoAdOyOO6od4ta2v6zaYntEsnEs3PTzT6p8yTXfI3ZYLQFX7jBNPk5tTR5DY5amDEu08APFySUnoiiD2QWkOJSLqNFXTuIi+MXFMmou1Ph2ywzM3kpw70LHl3uGYdL5xM0+6Uaq+5YblIzD6yUmm9Kb0KG4+oC9t1ax9+SNlblpiAXZ7rq1WEz0211DZf44JVj0royxD1.S8adhApFyjqhelARFLDZZwI3YUNH8L0DV.ztpyUsxpI77gAW9G3rCk0mHw37TFPa0.i6q4Rpbdops0klIAWF8z0R3SSxrV0+LCL3f5aYntEsnEs3ocX2i2pcK1i2MjVwrQKosX+DjYaelLoj7z0qmGnq2Zk7KlU2Ss6bAKe1n1aizHohG+8s7tu6xtcKC0snEsnEGhhoi4tJloafAwvEULG176ye+5fdw7fr6ujBNGf9fmblF8unzzHH79Yh+oeoN88MHpoT+uo4ZokYhhjlb6dTjJVS8Gax7e5H6h6dQbdvyLTT09MYwfNHsDW0dUo4eUb3DI4Y8019FWe7+zV67HYMJSuTEBZsFaXFhpWeh+aWjt5vyPZlgNmblccoxZssapvdhDMxYXuuy2fz0eI48xErS94WyVoJMzzdSzxPcKZQKZwSCw9EcstmF0yzTFO3Hnpml.sZwAdPANH6h+d18S6oghMfFCEhKZWAOqqyLhm2CJK5L2NN2WOqE6MlkqJIsMyPKC0snEsnEOECybFFCaeClrEshUQ+wqxMNxmNzlZlcl8NLCRzx.SLpYv6U1ZJPfV9d1+AM+5.T45CZcMr6+aNPhriVeJ3kbMlp0CxTz5Zy+.1ZxcuHp5+amhsYPyHSjo4JmooxYJ5OnzZqs.BsqpAn+D7T+E.k76mpoY3z1zzkOhZBO2Jfpzmc0yKFjKejcXSeacM1OoASqUkAQ.mXFnK+Tcra9bpAUZFfKA034cJtjipzWQJawI1uVpq2929DqVzhVzhmFBcOROh6tLUNKdki3Fva9qiC0CH6oK3oSt7QByXFR28oRMao0MoeY5N0Tf06CQ1BNdlfYaoIpE7YZKlSlhf22GfVFpaQKZQKNDEMY9ZF6BBM1fTVVT.UcXDasDRSeowu.ax4ZlsY4vyzTzuoitCfee097w0flQUMbrMouL2kIxsIrCxlw+CIQSs41z0NpsHyhr.JBNJq4izZ11nnXRtJQruUgOXKIpM3XOjv9mxbnzWxP5.IhkCMkIRa76NI82GX4VKCNtbrd6BZV1+6BtZsqhVhQpqpYXlOfjH6tp3R9PcsuWDuac3DLh2gp8k6fqcnkff+dasDURENRYiUByjDZntHnRUI1ebve9CSmUSMjSssMyoPBYCVQLMFhvfGHdh85zLqT6GoywfRhVwqY9VDwO6JRQ55nMl.tv02L3nSBa1sLT2hVzhV7TbDCnsJDXChXwIfCSJklOY62dBTUSe5y9uj5Aj.93vTUyjUPKNPgpqa06KHDCrRp8IFfUbqRvHUWeyBtItefO8mDOeSVPP0Kb640uYBxK24sASUP+IxfCArktGnV6S39QUIZKcytB1LY6q2ViS6qdT6PNnLtZXPtwxar7qgjzS9eSlBouLvRWyxReOmpVoiTHqyPmCxNIC6N+4NoqiAMfXUWpu3rEsLT2hVzhVbHJlLsRmxHYofAhAtn.k01AUULh.X8LTEO1grtn+Ew3sv1rW93BuNMubze5WNK65kBdxU6kx.X5aw+XF3KzlsZCuESGpmoDoAS0BPLidpN.whpQmnH5LwguGuehKng4Ze.W+7DaFxbnZFyhBpyyPYJ.KS+BZ3.0rRjG3uHRJvOWXnnoYzIDz5XaaqPYI37ZPuJlwJW0vGzXTGztTvkNUwHgeuQ.pSm+Lq3x7gZnRs5Y2mGaqCGHUCLnmsnEKURY40pCkOyJlzdbr8HwtaL.UgzDLoCXlNBsboYCIM.JRGupy6TLnAMyysapw79x.klJmSQ0.i5Rp9ZPAWITn7Dq6Q.WXvhpRsmoMMChokg5VzhVzhmhiZSGcXUIkGvZNKjMYRL8BOmRm3Kk0Aj1yaBEPczM7R37iYd4Jmon341YDbxfRvEs3.AbB9o.urDIvfGP0.iRxyI1GSg0udrMt9l2mp4m9XM7f.Yejeuvf9juMwe1UfG9dtuDyy4rsljHQCl7KV25YnxYm9imYHeFoZvH6TfXcoSYPJNMF.dyDEOpCb9mILalUKQjvrjogAPEkbT94PqGH6LzIQLJXKU5VVOyn1blVh0Ie8TXiq6Qoqc2Kz31.paQKZQKNjEtFepiT.L3iiNEDr.kIxAiqdo.yhNOyip.DzzoiRLHzwAaXsqKb.axLsI9mqJaNkMrtGFwoHp5egquf4YoKV9jvG7RPoH7h1HhbVEO9RiLnXK1yPy12j1Qir6IhmAu6cMdlW05A8HZ3CgsqzQw5WGhqDi5poU6Z9S7TIgh8BxMZOEMC.sYvyosiRTJwfRWAFoWI7vqGelG0q4bEGFTuhcUWEKpkJqe0qgE3DrJHhshAXowLHLaf.X7x5BQnT8+dxwMlR4qnXUGaXcOBTnYThGy3fVhyJgeRubv8tFrgq23peecpHkennJP1Rw3+h.ivRX.60GfQ8xXkGmGsywrDIDFrJLWmx8dS+De.+pFzvtymoGCOMzf3sGOmBEkL9V25zRVfnlJGwICsOQpEsnEs3onHmY5nVN8unFdFG+yhBWIRF6fw8I+emXNVbLrHrw0tN3gVGzqr463pCGv3kb+W+svHAodDSjESEKVp.i6Td1m9oO80uYTqPK1SfpJFCLrpr1a3FgI7AdLovAzqjG8tuGFRqhfpo9baFbZSszevBC0MC7bPK9vJMjWxP.yuWAE2vMAktP.zCVWvlBGTTxs7cuVlmSoiqZalILIOYKNtpBFLxIbBTJlfDN5eVnFTf0FfgEC+ra5lgwK8Z.IqtVqt3bv3Ero65dnqygwze.6SUAbBWIO6S644YnNNd+lsw0TwxLa.FhBi.7v28cCSTlFTey5ZbaQEXSakG4tuG5FjgyrEsAT2hVzhVbHNjI4SyWXJgfowBCsfEDl3Y+KacgoVUoDzROCZpW6gpJHNu1Nmi5XMW5kCiWDBXHm43P.DfmYqe7MRuG3gXtDC3.b0jRh+XaDEi3Ympz.85HTzwWVaCZdeIL9oPmAO1HIr55T0w7MF9AehOOrsdPoj4Q0d1EUw4CJwIvXEbCe0qf4EGHk3B5w2RdXG4ZxWkYZPX6+vfVPlC5ukfHzszwRcFttK8JfhBuLYfv8QU0WJJgIJXhq76x1dnGlEXMXbZXgCJIlp8w54B5V2+YxBjVHN9EimIZiAVvBPECtnzZBZk1Ezxs.MXB2gpkLeivc+suFXCaAJixwv+IMSSfmY2wJ4FtruNywHdsVKUmKoYvvRcOlWwv3cDuQ+3enU0Lj0W8KjnZz7m03xdlWj4e+OGVDJ27lYiW5kC6p.bgm2Itf9wCbTq.EJkW40vxFuf4EXrtIC6MudzDsAT2hVzhVreA6+ebaMq9pZU+.VCKcUqjdZ8ss4+t4TdaEgQQ3G7u9YgGYivtJgIbHENjRGT3fIb9WdsyI3e+u5uikV.Ci12wsoMjkNeHrCsji5DNNXVloxlJjpEZbESM89bcc3mBZyfh7buA1uRH6Li8sJFKcLpXQ+YOD2968hgcLAxtJvLQARQIRghomCoWIriB3ad0rwa+tXNl9OVSGJTGyYgKbexHobLKt9IvbWvnzSAWFK64Z8dPvnNV.vCbcWOa7K90fsWBiGtGoveOhLgCFyAqei7E+K9aXw.VUI2r31aXcfZndr3UbDLAgDN9.zQceydfBySLLxStId7Owm1e8d7Bjdg6wKbvDkXF2A6r.9VWMq8Gd8Lp0fpkynxtCCkNnrivHm3w6C9O3FLw+qpRL6gQgthvBECeqOzGGdzM36aNdOLEJRghTpvDE95visAt7O7GiE5fttF51dFbtf1.paQKZQK1sQE6KdlWRZANxfwdhFHmQvLvOZjgpf83AjbkADALFV3JVAEHA1vTPKSZ2zoBZP6r0l1aWIKRLrzGeSb0u4KBt46B1dOXmkvXk9oGd6S.OzSvM7N+CXq29cwREgtAKyqhQLKNUpzJI1f23pTJvXVgEuxU3IPMK3uz92mlwCLoRjo7nlfisESNzYXvkSIj30+HShMQ8xaTCsZhswpuuY1Ezq2yLM2xjyPlG4d0sWutU63fW3aQMgV09F56nUSe+vkkrbEtquzkxc7+6+CXcavGHxtBW62kC153v27J4K8e6hYU8f4qFDwuPVMhuGnIq.HFEkxp1KUnm53XNgmke08Iw1tvWyTGeUSsslXzsuPcb0jTR91UssFNlS33XLq5Y2M37F9BhIL6M3YTUCCWUUrHLr.GlC9N+Y+MT9YtTXaEvNlHLXyROK+2zcwU9ltHlyOcsrDiEumgT56+HQudNV9pO9hAMVi3r.TmQ0RPTV7QsR1gwG7pFR9JFD+LCjWehyffQYHWIq.gq7e3R3Q9ecIvlGOb8N9omudcEWEeo2yEyJmPYdNoV4tZFuLnN+yUbp2uqcnzynzczQgEtfjgfD8paHNiZYyNfSPMg03Q1Z1n4m3yHTsjkXrLx88y4JeSuSXMOj+4U6R8WG1UIrsIfU+y4e+M8NP+4OLK1XQbk05yjee8fuN3MezVayqEsnEsXODR0SwmRTKDn8CLRVaJlivHf0vHm4oyDcrLlqjgwfMKfgA5QqALjSY4X4wu86lO5q60yy9beYrhS7Domwfnkrs0tNV829ZXjMtYNBqkQbJpqLLk+MXBKqb5STFPYWXmhvhNoieZo7Y11D1elSae2Eg8YLYOYX.oI7oGS+fILH3zR5HVFUELX4N+xWJ270bsbJuhygEbTqBUrLjywscUWCa7NWMqpGrDwhwM0oF6bIIkx57XnmQXnn7jNPAAFWD5AnFChS7KFyAvtaxoRfvB4EVr0frwsym6+1Ey7+BeQdNu7eQFZz4w3ac67nq993N+NWCKerdrpNcPJKHMfplZIepJh5LfTvYS7..vGMkDQAQ0IbrBmvYdZ78ttafQQXHwVsffmh805f4oJqPDt5OzkP2q3avy9UbNXVvnXEgNEkbae2uOa7NWMqbhRVBBVmKXOel9b0kbsWKhPoA1dovQexmbRxOouuV+3P4LFHsSvHSOC99AtKzovwxwxSba2Ae3+ymGm549xXEm3wyDheQf9X2y8x87stZVVQAGtwP2xh90I9Tcdx1r1.paQKZQK1qAuEM4Y6KSRC6i0FZ7Y5RieFChsJv3f2MX8ZV73O6Sms9CuQVj3PJELXB9AbIFQRKjIbQOrETWIcLvxrVFomiM8MtRdrq3pnTcXsV5pvxEXNFCcS5Yrp7DG6QsD8hw50Vs.iigsLjANqyHog5J1hp7I47W5Zzfld0rVBUQjLOuNs0N.a7MtTWOmwL9Xjs3Av0bpLM6i2KVl0Z6cpEg7rxV0NMnztSf4XEuCEju4Y+s9SVH02VMv.bECwQFo86mS7ynQzCeMnLGbbzhkctwsvZ+beU5IRnlILrX3XEXthh37WO8A8UOi1kXWW79tb0LJ3p5uFWDcIWbn5Znuec9fiLg5coO3L0DNhw.5qacZ0aGFf63fOqgN2ENJ8Br3JpAmTVKf2XeKSZgTFpeNkN3XQFCCixNt06jexsdGAOlVXHfmIByqiAi5cGjzwk9uet55e0089gIaKi0WuNpOxy5LXqVCGtKlMDCZcdPGlZmGGyyX4nTks+yd.t2O9CQIp2h7DXHivyPElmwfwUhDqGP35PUEol8ApBkFCaAkS8LNMvFaKi9Yd35sp9wxaTV1JVNE+zeNlP82moVaz2m58yD.q32pCyXYt8T1vU7c3w+FWIkpuu1PH7Kfg4Xsz0URLKP5+DlcuoICIFQa.0snEsnE6gPmEjos+j4xlNoP7kZ9fpMbpuzWBWw0ccLe0vPM12j2r13u4SBCNFtDFRf3KecXQ5g+E0AYFDmF5X.GtofcO+wvvNUGO2W9KCFtSsj6wdCra01q88OlQvkGYzLAGHYicRPtl28RDvgUUrEdGTXwhfSMXw3Y+24PLgfoYvCHYxNOJfVBkVkgW4JAa8A6ruA0Wfb0KTvRNtiiwIN.kxZCNsoc5E8N6banrCkr.QXTwGfe80NfiXhNhn66jgYBK0Z5+MYUAweOzK3LnXYKhwehswnXvmtum9iuHBcbNlGJyW7CXMljnz3hmTKCA3N3N7RX.W0m8KgIvvF6prpy8kBlfE7QvmtUWUYSDnikEtpiD28+P9lo3yLlltWwr4nfxHNkgECKAAsDuO2SnaVPdHo.x2MI.oUC0snEsnE6EPb5p8tdfq9mvCp2a+.290Lb+ehJRzqPToxuf6XXQuheI13PcYWjM0rlrW7kzEbTgxgya72cZXQHUhA+JmOogRwkzjo5jfFMiL448253e2e97Ky+c5J4Y+ROGXnfKEjU+hn5eWWlCM0Vbd6PZeSrWFgKaaZpG89wfBJOWy5IGVnOFQq7K2nmaWow4A3k3p2ebyYgK1NDcOg9iWcv9Qtjc9S6iDbgAxZmZJIlfujaDMoEVzp92FQ8W20BDs.CNj.Ke4ZoM09VykG52sOJMfyXgUsb+0dI5G1Mu9D2wFGmz1Mn8qJsgzrMp59nLspK.G8pXrNFlvUFbsBCFrIsZ27dspFb+.KRZuUcd+4NNiMYIGGUqVCAQF6imil2eOUt7QzcOp8Q8ZnlQ5vy9k+RY6E8pMiF8ecoxgLhmGGk0+6g9qhn9foiqwBwgKpm7zfjMg5muuh+9eCnB6nrjQdFqDN4iGD70YBZpONPNw.VKz0vIblmIimsfGSCFYPyvPimakF7iqLvPeIF7ehWapMaNgYRHucPGP+1JDc+jVzhVzhVr+G6GYjrdlYK.KvwtRNky8kxVUEmw5CnJWWqY+rYFTTDwyFIYrIkBFIap6ikgA3t.4midhxVDnbwKlk+ZNOXH6LdDHtYTa4tiFiy16YHaq4XlUt1Oi8fEIaLf6ZLWKZJ3ZQpXfcF4ixYdfdoA1oC+hQUhLVd.DFfUsbLKdAAYsjMvlF2WjWOhnYVgr12GWDqMX4NEx+LzgOlQcurVXXKu3eqeC1rUXm3uWelnQ6Ad+pINfjp66a5u78MyXYsENfRqksHJu520aGFoCzodJVuQo.5Z4HOoiiwPvYLLHQPMHzziygvhfNXGj9bIiV6dh8DqarMf5VzhVzhcSzLFqDygD+3YXL24A1eDjUhQ2fWvBUx8vKYC0y.3Hc3W7M75YyVC6HFTcFixQlZvU4espPHqJlGzTcVVU7x6H4l.Fog6CDXdMKnhwLFVq0w486cQ9WvlBvneFZGzqSGDCRI2qHq82WNxBjASeL.Vwj7fsVulLl2jYuzLRjXMrQ8N86M6CEjOSjF5zwKx3XcFhim2p9Tl.CjYLzJDzFd+tHxjgT4znfo4LIHA8tKfDx7dwxkqxepEwNMtQR10SUoTLr8NBG2YcZA1o6mgeoV6QD4tmhgb+wt40onB4q9wfGjkfwKUhtBOqy5LXWNWPYuU90tX7Rdv6i596obT5YzMp6ZBxcJvVcxWlieeX.H49trH1T6dU+8J2pQAFTV5aftHS7VHq.O6Shi4EdV7XZIiaXfsOMYdONCSUOOI9rAMH6BOiuMmglHpV6F99IdW7QYikETtjEyxtfy2GPcnMv216cXHGhm8Xq+4GK5rNcFqigwbNbwmQUqt65ubDdtU75UJvZmew0phy2N2XfPUs2gmeS8YFp+LknCeopEsnEsnE6FXO4wm6eezatutV8RNCz0R2+uNSNm2zExiHv31vhvogVQGjGUmilqn+A8c4VvW9w2YEJsc3IbEL5y+4vReKWHLjwGLv9xAez27zOUanqdjnCLflAseyhqyYG98o5reFU1CaZsoW2DBfLNU9Ct+Qb6mIrrVIAHCSHvFsJ+Bm8Y3G6v9.FpmU20IFX3tbpurygsqJEFSeKt3AUuGzLyD+YyOU6mkxxAe+yjVWlAaVzpLUiA5J7J9fWL67HVBaw47YOwooEoYRrYpdVvfdFPyY1Rwv1AdjtBukO36GFpCp0fZhLcW8e0JCcDXQKj+SulWEaPcTXjA9bn9p+YWOFTcI+bHXQvammtcyIwoMf5VzhVzh8HDRqutLlnHvnQ3A5NJqBrzEWXe66mR6lSCc7u4YWDOSfCY439+4cP2S6T3wK64Y+QHvBpTioPe1SrLyWV8uDZPRCw+GbA4e3CJMxnWJSLJVJQXyNXrEuXdc+4WLLug.aTsqtZepJGY0k3+NmEZJ8SMcvGby0kYcTM804ZtsR6p8G7fWa4AVCiunN7IpgTxuNCD0MqloG0J0sGm14p9D9WvGxfkAe6M5cuNzL+7MFjPbPRRHMJq0YUKVUa7J+X8npMr93FLhmw4BmxN14tnrHpK9vwx44uKEjXjQZmlcdyxHeI3BLaFZGEC6REFaYKl47JdodyoHMfjlLS2eXK91lxr6+herA1yKqZWSKfv9NL0O9g6MNxWwuDlkrX1tqDWJvORZEF.0EzAcLy6I1r1oryaljYhKNOvPuRG6XWiUsf+hsmNwyDa1LB4CLs+jmhegcF6ekkpwQ7+sNBb7GEuz+quC1fXXLm+Ni7LWZr+U5YUwYbK96o6oLfXqzZbPtOFQyZ6CWiUeY2ggwcFdbmxIdguV3U9xggMoYzwyKsMokZA0OaKgroJVCm7Ebd7XiXYWR3t038Z++2dm4AIWG02w+7q62Lq1U1V6JYYYYgExN.5.4KvVfMIA6XCDbBXYSLGFCXWIj3JEjhBvUEJ9CLwU3prgbSUlb3.EEIUkCHgPUIg.FRkBLx9OBGN1UbbvVQxxG5d0dMyq67Gc2uqYFsqVo0Rq1eeTM0ncduYd8468q+1+5ecrcV59JoWIk+8gBnh6EfQhK34x07fWLzM2vjSzkNyzsXvidedO9FdZlHp5tOGeNTlhhhxRbFjpq8SgtpmWugwqW3IZhav8JN2UwM+otKNzYOJOi0DTpNZPP+T2YPJ+TUM5dtdUUoFK4hgNhv9.1YKCukO5cBW7lggBKFwiEeYreoudiBC4jWsNYt96GMzsogLMq66osfoLsT8cngg5jZSTWwx9opeyWUy6I+.sepjVqr5XnYWxHK7B4hgC0MmoLFxSgkuYoLbPpyl9tdumthmosV1Kdtl28s.qdTHatnvso2x7AzVThCzne0ECDgPc3Xix07tuEdtLgYLk937bQo1pGqYaTmDJGmvkygmoKcssv2HOL6suRgItJkqToOP7ehDLHkkYY821sxEeyamclIbXikbiovscNZsyZpRc+lQpAsFIxECSXD1kANiWwEwU8Q9vvvYEK53iFEpUmYfWy1Xculswd84z0XKZG1y2oOpkOn0yQH+XoqQXetbFOyF8Y94PcPk1ABhZPshhhx7kjBFgUNtqX04WryoEUVp3gnL2mR2iozAIEUS9bY8WMoTwvfODRlAtnsvs+E+SYWmyJ3Y5zktUT4pXQTE8k1BklSJPW42LopYvWLiJYkTsif5kdwfSrbHmgcmkwM8Y93Lx63lfgxh9sXnLsoxl8tyGVt3nbTWQsT4RPYp9UBDjPMbrFQGghyxDsYwzWCK54WshOnVmTYYRQrfFbo+tXGrrhgYAWDc.QsijublJWRokjazD+87jLftLJeTsjK8+J7IzT8YpbrR4wLVCqYqahmIuK41LDw1v2ei9Osqhw9IePswLWHEoYCcEKOWdN10e9rw2ys.CaCF+0uAkQY67nLw3qoTensVp+WZmXrH9P6qziP.7M1AJKznM01wCsDV2s+NYlelym80sK9ztInub1MRkClnG4WLSNM7oWQB2uHoJ5THbHGrlW9V3HsBF0UMFLWMZUjBMm0KULoB+nuyGeIAUTSt5UXxIhpxNjgK6dta1v63lX23YJevvzzBRN0NJXtddwLQQEeqtz2jskJHWseSgQmVx8Byfvyhi7Keq7l+R2Gb1mUPwbSy6aEJ+ERwY9X6eQB2i5LZwa5SdWL8JWAGz6I2F7M6hc10zLRHIeXOoVcrbK1GqrubH+l6g82oKiu5QYy+hWKyjYCoAe8WMWS.kCrHzmVMnVQQQYdQuqL7lJzVWIw7ZphvBfg0yG7hDTodYYvksEti+xu.6aMqhcJdNTVFyXyBKVQWupU0jAoZMT5CkcMFNrwxN8Nd1Ucl7N+j2Eq7scivH1vC7OFUl9noJc5bBXnVDtP507jAjopbAM0xayxWj7zFKRRozFJS2mbD.jOPWToYRKbN1hEZWcUJajblWHhfSfosFt3eu6k8slUxtx6vDFC4UTReP9RMzGep0avIgYBYuhvAO6w3s+GbOvpGCxL83GsykzX55TMcTqsWLoUefPyhODiODMbVyJ487I93r61VdVbzIyVXnbv8N5Uw19UV38BdiktHbH77TFOW5McCbwe3OHGIyRWo2nExfnoOTWsNuvUhpTNFFbkDhdNKuEulO4GmM+VuQdhLg8.LUV6REeisymsYZqoZ7kI.C4jEpesB+Tqmw94uRd62+mGVynPqf+nOWpgCCHviW7PKCbAmOuqOwcyS1RXedOyjYwK191FX1teUNBSlYYOF3vqZT9U9y+7L5KeiLsYtsF.p1tRUnVQQQ43fdtQczGNKUdLuv+oAvV87OFLbbfW+FuZpT8fNdQxEozv9X7pkKaK7q9s+5rha30y+qA1uSXFeRALBFkF8UwpJ.G7yPInZUJF7FiSsNL3vRt2vgP3oDGlW4kvs9W8mwv25MACKgquwG820XThnQ5sWEaiO32E8cynOdVDWeqbdgjpDSST+2nnbqtu5584PLt6l2igRth3zbSeqL8YEmWTwvhof2STEvfJmAk0jBChC5iElcC79hqC97nxmoW8NPBvQy.Jc+LMHs6RVU4shY.nhRbduGi2vQZYgMtd909ZeEZeoak+OWNSJw5oFCroegEtvfHCQmAuXnqsMOuyy9F6L45+X2Ib4asxVMWynnPfpsiKqKJquRwY8REgiFYIUO+3w8oYnXPQLiXrh1ZBtgzO613s8ouKdhgyX+NO4oXrdEC3b3AiTzdxfTFgbRmiX4HdgcaLbA2xag0cO+NvvsXlrv.W7PQ7tl3.uKhlF835LUWWAthn6QZsMD97nod93rhHDJmG1vk+Yuat466ywybNiwtnKSFK6RC5AevGoSJUmlYpBEy8oX.RJQDTr1gvzhvy577DsLrs678wq6KeevZFCZSbCHr5LCjhlF0UlNc+Io5L3z1BuoWO2z876xNyD1edXQJ58kk+gYvn79QE2WJVdFhXQVbhkmIOmculQ4l+R2GboubNvvYLiQJ5yV8U56W7pvncG4jq6ThJJJJyKDCGISXbeFYlvBdo3A3tfQEhDtEagZONgIZIzJyVeN6OIQMU0DSvfz1FXsqjW2ezmEdieS9q+T2KO+S9TLJFF1HrLugL.iyiMYzG.HQ2...CNwStAxMFljP7uch7tjO1Xb0216h0+9+0gyHKXrBDLLuPUr4PhWfYxrLYqVLtQnampGzfupDdQiyb34HssLUlL2K+M.VXpLgi3szFhwhWawuqAWsvgnwaXxLCS35xzYPXadNXNX0vWXgA1w7OdgNYBGIS3vlrfQUEFLB0bTi3TzKXI23YJa35DJCSKpyi+YAI0ltSzGb4k7h4Ft+u.+6ezOFO1+72jwxcLZ61z1mSaufj6vRJNRGThzQvnobQni0v3NO6y2E6Ed9ba+g2C7J1RXPUFSsz+QECg9eD6+4MXSWKebfUoAaTIj+MgQniElKU9ECHvZQVVFq7stcd+m2Z4u388g3P68.rBSKFAOscdLNGFI4JHFJFdlH3LBcDCSZfCj2kC1Ji23u0uAunO3uYndeHgC0xxgkPDuvTLXBaOgYyTy5wamwTt7nwo0G3huQrQr1.avfHNXHKzxxYb8WGu2K6Uv+4m9d4G7290Xzt4LhwvHlLZgmrbWzMtBsdqo9uDxe4Bzw.cECSKv3c5vgrd1vq9Uw1+H2IboaAFIiz3FmqyNWoqaU4dLVAFwvY+V2N2wpOGt+OvGlCr2CxnV3LsswlmSamASz0QB+Fg5BuwPGwSGwvg8vAvwJtjsxc7ouKXqaonbc71YLtOZXekY0p5sTJpW7F5Z8LYdlZPshhhx7hLC6aYs3Ix6fDU6hneORwTm5oXmgy6QLvgxrrp11vBx43zf5xGybzOdhlmWwz1ldnQZ2LLyCKGX6uNdaW+0vd96+57fe0uNO52eGblS2gyJW3rPXXuPqjBwhPtDbqCGdlDXBuvA.NXaCq9h1LW0Md8rgs+KCiMVvv8rPYPxEXBqH+d2DZjFFT5wAF3vsMrmgLL9LdZIUUrr9zuW7.bimwEGGXngfVVRB1cTe7tHPKKGXn17j4yvdMUml63FZg2PsnPh2yLNOi2NiC1pEXrQ29HME14E0FRxmaAvJLg0vyLTKldxtked0YQHgO5NF9bjLK6cjVAC+pLvDIddEwr5AXnpT42DnX1HRB5F78WWvkbxD3EMF+b22miq56sC9m97eAdr+iGhUNcNi57bFHzJZGhKppXtIiIcNlvJrW7L8pGkq91tU1zscKA+oskDc2mP+jXrlnOsCRu6.Kr2gs7DGoCA24I3jMoSzS+Zu6XeCkwDsjzdN8rW+mJ+M9fQgu1qja+a+M369Y984g9a9pr5YxYLGrbmvxDAiWBSzBPNgvs2gbvAsN1WqVrtW61389a+gfKZSA0V65o6PYr+gayiOwzLh2WlOHU0W19OTmZXpbOO+HsX51VFxl7U85kS9X+YWgq.EzNuXFEDSvv5y+r4Rt26lK4CbG7vewuBO3e2+HY68fbVc8rBugQx8zFhCXvgwGxahHLi.G1AiCbvLG4qZTtnq6WfseC+RjcUWNzNtwsXMk82ZjNKxq3pm9kRWovG6+fDF3ECCbsWI21C7M3+59+x7c+ReEZ+bGfU4ENSmmgwFD4HV45jvf5On0y9yfrK374m+c+14BeOuy3lHk.4vQZYYOCYnyTwcIx9Mtaev4uKh5IVC9kOLhegXExnnnnb5NS2ktemuOYSEWzLMlB1BROkKpnCYBcOmUQ1VdYgajam+ddWSCpGzeSiOu36W3RFgyzfsP4o.NjtdniGlpK7j6ho9d6fG+gdXNvN2MOxCsCx7NrtfZNNLjaBpfsgMuIVw5NWdoWwkyXW2UCaXcAENaa.qfKtAjHoo0MlNRSQcHcjLDnoA0fzwAO9SAO4tgtQ2bnpAnh.NW3gu9zfWbPlgiz1xxuxqHXLg0TobK86mFPTNRtCl1yQ99ODKe5bHOoXbyMXjxzWx.OxD3BVGbAunPcck7QsxYuOXyatCdpcCO9NgN4kmex5PebiloZ9IZQX2grjc0u5P4aetNR2bXZ3Q9b+w7H2yeBanaznaeEU3RKduhjUTkYG7ia641+o+P7qXH7hASWGzwASkC+nGi+6u5+.O8O4Q4Q2wCSqbGVQH26wYCtHvKdiajyaiuLtfW0kyHugqEV0JfQxvak3BeqrdOM.ui5.qlNmtemGjro5VNc9M6+k5WlBgcdWn74krdX8mWvPOS8ACU+5knLcY7BzgP+gm6fL8+52he325AXWOxixyuqmFqKrAeHhmbuP2LgMcEWAW31dkrta7MGZKLhEZEWHc49vuyO5QXntNnadL+jWlt6GFgYZCsunMCm8X3yJc9hl9ydzL5hxmzY5pNnNWdn9blXe8u2Cwd1wCyi8CdX1+N2M6a26NNuC4XwhSb37BsWwYv52zlYsadi7R21qDttqNzuZYYgALaS8xknlCk9croQ8aSCpK1rW7TafhEoaOgxuIygmeeL4+xCvO9e6A3QevcP2Cc3f6JIgYnniwy52zFYsadir0q8pw7FtFX31QWPINMTcxC2O4+4Iqz+qR+8h9cEEzUZrHpA0JJJJyKxcAC4p8r34vsSkneYZ3DhJ0K33IXXZxfOmOJBb7+SzGe2ytgy87hw20jOOFymVIL0zl3eKl9pf3wDNWH8jSkh8AT9mBQBozkgXcvbn72WIummtFRk2qcxw2qHAmsx05ndcpbs55hOrVJOVZpxSR7UjehG2JgEzmwz3Y9gXDLCvf5p9kdeGXl2P2b3mLDb6+zeHtQGlhgfz0GRKcp3eooetm9og0t1pxJGZOXIFgGLEpVNunn+W05gA0+qxfZMgxoT6vi4qerIOt30OO5K89XclG3o2CbtmSvfXS7xaLkW6TegzuWWW36OqsuZP5243obr5UpYa87z827kkyievfgkm0xoXfio7mPbmM7El6u4INl6bWr9vGuefKVG4C2WZsw6KUjN8w5gJsCZVu5aVO3qzuq+nt7ghhhx7Aq43Rc4EMHDyqDVk8Un7Aw.idgwOq+JPMWL64XBSzH0VmH9wNJjLBbgttNYvogvC6mCbLUN1GuF4XmFoqrfBptVovyluXg3wJ1P7BRO1FNatpzbhSV8+pZ.YVou4GNTTS8UrgxYIY1x+Bw9UmbuWhG5ssdyEhqyCm0poGeK4jHdAHKtXFaS8wi38g6KIUUouWkwA5a85wJKAdZfhhhhxBAdZD1rjxG9NH+eU4zSR97bMWYop5zEm2oOTcyTI0duY+gZuyol4+jsj88XUCIfBwnXR+br3SdH86Op7d8A7zm5oSPnFTqnnnnL+IoBWE+ts+wXYkSWoV70VFrAWmJZL4IJpEQUhFd164r3jd1U.OADxOegfl6JnUqiVHxCpKennnnnLuHMM+P8vAGEJZ0+GZs33wwJyFoEQZJdEG17dn1BL8zYJhJMdvTFRTJV3cmpm+m0Esbk2KVnpMcukSgnY9IU+jbwizLnjB4c800ONNPMnVQQQQYdQ0cjspeVx3hEqJxoL2IUeWcm0ysDqlu4lqyhAiomKHUFb.za+7S0yiE6xh95JSehH9r2OTCpUTTTTlWT3OhUTsBJUtbPKBwSHKJMkSYnvXZHD9vnwzqmNuSBosERZ5pKkpx6qYv4hk7ey9kU8Q7SkMftmzcw6oUhakELKKbC1Q8gZEEEEk4EMMjdgR4GkScYgbQdsXf5CbXgS8ySVzOEcWLkG62fATEpUTTTTNkhpJvEdvU8OW4zaJpma3q7MaOb5LMymGsYlYwBE8ii0qFp6BWKV5eW5izMaepJTqnnnnnnnnnbJGpB0JJJJJufvhck6T5OK0qWWpj+OUUW5loqA82Kz0OpB0JJJJJJJJJJGGnJTqnnnnbbwfT9QitGKsX1hpKmtyoK4+AEOpmsy6jMyV5bgVoZUgZEEEEEEEEEkiCTEpUTTTTVPPiC0KMX1T76zceLdod9+jMCJNTOniuPgpPshhhhhxRRbKvmuhxRGTEpUTTTTlWLWU7QUhdgAIZf6QWAt31ZQeNn3AjxMJ74hRdh2gWry540+z6oWrXO+uXu+6fRWyV5cgJ+nJTqnnnnnnnnnbbfpPshhhhhxRM7RTh54BlZNl5opJVpnbxDUgZEEEEEkkTL2ezuWsdVQYNgZPshhhhhhBASBJMKnW8qCG222ionrzF0fZEEEEEEkAhSUoVQYVQ8gZEEEEEkSiop8v0cgifuQK88XUwgp+lhxQG0fZEEEEEkkLXJd2KACkEeCioq82pgzJJyETCpUTTTTTVDRuwMZS7ySwmZAQL3840ToN26IGh9xgCiO4VGguuwaimoCmH3x8PKCkAyZWL5VaQQQIfZPshhhhhxowHhDLF16PDAmywDSLCRyvlmOZPc7OyClcCjAKanxSKXp9BeBWQYQD++bmzXygGNQHe.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-27",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1071.0, 387.5, 100.0, 50.0 ],
					"pic" : "EssEssDet:/Users/tcarpent/forge/spat/documentation/MemoSphericalHarmonics/latex/img/IrcamLogoCouleur.jpg",
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 195.0, 670.0, 390.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 118.0, 46.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 78.5, 46.0, 19.0 ],
					"text" : "START"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 470.0, 118.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 78.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "bpatcher",
					"name" : "spat.sfplay~.playbar.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 740.0, 160.0, 464.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 100.0, 464.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.0, 317.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 140.0, 37.0, 20.0 ],
					"text" : "input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"contdata" : 1,
					"id" : "obj-15",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 800.0, 340.0, 140.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 160.0, 464.0, 124.0 ],
					"setminmax" : [ -60.0, 10.0 ],
					"setstyle" : 1,
					"size" : 64,
					"spacing" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 800.0, 317.0, 67.0, 19.0 ],
					"text" : "route levels"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1032.0, 641.0, 52.0, 19.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "demo.studio1.hoadecoder~.maxpat",
					"numinlets" : 64,
					"numoutlets" : 24,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 180.0, 480.0, 760.0, 180.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 290.0, 490.0, 295.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "bpatcher",
					"name" : "demo.studio1.dac~.maxpat",
					"numinlets" : 24,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 680.0, 760.0, 170.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 590.0, 760.0, 170.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 66,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 180.0, 168.0, 560.0, 19.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.sfplay~ @numchannels 64"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "spat.copyright.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.0, 460.0, 318.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 10.0, 316.0, 56.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 19 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 18 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 17 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 65 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 64 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 63 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 62 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 61 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 60 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 59 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 58 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 57 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 56 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 55 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 54 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 53 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 52 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 51 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 50 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 49 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 48 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 47 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 46 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 45 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 44 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 43 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 42 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 41 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 40 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 39 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 38 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 37 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 36 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 35 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 34 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 33 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 32 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 31 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 30 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 29 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 28 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 27 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 26 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 25 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 24 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 19 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 18 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 17 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 64 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 63 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 62 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 61 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 60 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 59 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 58 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 57 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 56 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 55 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 54 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 53 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 52 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 51 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 50 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 49 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 48 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 47 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 46 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 45 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 44 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 43 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 42 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 41 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 40 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 39 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 38 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 37 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 36 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 35 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 34 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 33 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 32 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 31 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 30 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 29 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 28 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 27 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 26 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 25 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 24 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 19 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 18 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 17 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 64 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 63 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 63 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 62 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 62 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 61 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 61 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 60 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 60 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 59 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 58 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 57 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 56 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 55 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 54 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 53 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 52 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 51 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 50 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 49 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 48 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 47 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 46 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 45 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 44 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 43 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 42 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 41 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 40 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 39 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 38 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 37 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 36 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 35 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 34 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 33 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 32 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 31 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 30 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 29 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 28 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 27 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 26 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 25 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 24 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 19 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 18 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 17 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 10 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-34" : [ "live.dial[2]", "input level", 0 ],
			"obj-3::obj-115" : [ "live.dial", "rotation", 0 ],
			"obj-8::obj-5" : [ "PMX5 levels", "PMX5 levels", 0 ],
			"obj-8::obj-42::obj-50" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-8::obj-42::obj-21" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-8::obj-42::obj-35" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-8::obj-42::obj-55" : [ "live.text[3]", "live.text", 0 ],
			"obj-30" : [ "live.dial[1]", "amount reverb", 0 ],
			"obj-8::obj-42::obj-606" : [ "live.text[2]", "live.text", 0 ],
			"obj-8::obj-42::obj-607" : [ "live.button[1]", "live.button", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "spat.copyright.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/ircam-spat/patchers",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/packages/ircam-spat/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "demo.studio1.dac~.maxpat",
				"bootpath" : "/Users/tcarpent/Desktop/journee-portes-ouvertes-2014",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat.monitor.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/ircam-spat/patchers",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/packages/ircam-spat/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "demo.studio1.hoadecoder~.maxpat",
				"bootpath" : "/Users/tcarpent/Desktop/journee-portes-ouvertes-2014",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "demo.studio1.speakerspositions.maxpat",
				"bootpath" : "/Users/tcarpent/Desktop/journee-portes-ouvertes-2014",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat.around.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/ircam-spat/patchers",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/packages/ircam-spat/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat.sfplay~.playbar.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/ircam-spat/patchers",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/packages/ircam-spat/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat.sfplay~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.pan~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.viewer.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.cpu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.hostinfos.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.decoder~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.meter~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.hoatransform~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.spat~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.oper.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.times~.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
