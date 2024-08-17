Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA19795552A
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Aug 2024 05:03:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sf9id-0002wu-Ef;
	Sat, 17 Aug 2024 03:03:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <frankdavidloanfirm3@gmail.com>) id 1sf9iU-0002w6-CI
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Aug 2024 03:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=knBYrvkqNtoR4fAblMdR4Wnbuc+2MhroL4aPtlAVG04=; b=fWvRAUfTKNulOj5JpA+yq20Hq5
 2sY7wlDOzNKCV/un/auh5s3RhqY+ZxLo8v3MOjg6smO2gkT0fJLK/um+GDE8W9MGzncL4t6ej22uC
 hdJ0al7/33mU1EU5N6C1dpeFstvUv9fo6DSRPFB3yifuL93QCwiGvMNcO5rAAfpU6dHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=knBYrvkqNtoR4fAblMdR4Wnbuc+2MhroL4aPtlAVG04=; b=l
 ZvOHNuP6OlMrvEy4skQSiY495qNaDDjtImYD4LERXzIKeP2x0fMdtYXXi19Id1Uxf+wD02W9zzmF5
 2pXbsKYWFxYRi3pR/LrGzFsfSA5ub0kulxvgrZkwX22IvUngT/JghRNLjNZ7ZNddbq3Nvd5O/vB2X
 sR3UYLXlhodOGXnU=;
Received: from mail-pj1-f48.google.com ([209.85.216.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sf9iT-00062L-Nf for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Aug 2024 03:02:58 +0000
Received: by mail-pj1-f48.google.com with SMTP id
 98e67ed59e1d1-2d3c071d276so1948553a91.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 16 Aug 2024 20:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723863767; x=1724468567; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=knBYrvkqNtoR4fAblMdR4Wnbuc+2MhroL4aPtlAVG04=;
 b=imMNUA7JTzpUwwNnczQMmgNNGOmiAPZkXuILASlo1CEOgxePrs0nTGrx0+anLqeDes
 x7yFCm1FeZluvesNmBSh42RxIXjy77lKfVA/BO5lVLrUPjCKQxA6/ftgErY2ffM8Lgsv
 0EnGVH66XjdFCsDgol9MJPHkbJ6YHlnZa4J4bqSuZnUGnz1TTSUVWLCfo2+w1WE9bL3u
 xN4mzdnV5aLRLvZYD2z2de443iwRxJA1uwEAHsvJNCejJPShlk42Ci+FLeTcwl4aF6OV
 ql6zenQfSSiVVpaCinZVu/2Izcnu/W5Mc8lqSW/DDdCmDy+pARMdO92aIq+GvKXeGVij
 n6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723863767; x=1724468567;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=knBYrvkqNtoR4fAblMdR4Wnbuc+2MhroL4aPtlAVG04=;
 b=br93jT/Zo54+5UAbQrlM86o4VN5FT7czdqxZO23LflynFRSoWdlidWyKz9Wya8FDg7
 4NoPSv2NUcJpTCrIcuEAsOdIMqhpHpEFug2puqLfli/ETzGbP8AK3wfbxhu8HfHgaSZz
 FYxWZ4v7rHT9OrhOm+iGiQ6jin359/Ak7kY51GEVJhIz5ViAQM8Tj2fh+Y95vD5ALisA
 xagstMC/bvXBIOJO3LXHlPNQorX5Iix/d6cBF3ieWmksc+yWO/i683EltGJ3yArBHQYU
 3hVWp0KnbE4btjinUZ9BNDSkxvIeOgNr6CvQEn7N7G/SoH13rodI5BCMphJC8ty9S+H0
 WfyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7o2LDGmZvy8E4Y9kiPXqnPWX/cjsAsmXXqTkE3Zwf9G0dc+YKFQGxD7/ZtP0j9TMrGum2Qi7fv0aUKg6VjBpZGLoC6ZXHwTgqle9P2DjgB7epzak=
X-Gm-Message-State: AOJu0Yx+Xl/IZC7ZB/pG3/JXfloDocjyrlQ7uoc3rsDwSRJETkFK2A1D
 hpyOTaaPGzMHppgwVngNky76hVG1Z0BhYkGoPbsGEi3YdbeqUDGx9WYVTzQK3k+foDGSjMeoALQ
 IeK1l3W8Wy115WQJ/wz8ZmHbzu2w=
X-Google-Smtp-Source: AGHT+IHwA0wJaIzv0EUv6xjogks+4zkEk058d7vJ68bnl91GENFUItmvFr+ej0vNpIAZM7RWyhXxmYXXNP9zqaGIKWI=
X-Received: by 2002:a17:90a:fb0d:b0:2c7:e46e:f8b7 with SMTP id
 98e67ed59e1d1-2d3dfc3a592mr5117497a91.4.1723863766496; Fri, 16 Aug 2024
 20:02:46 -0700 (PDT)
MIME-Version: 1.0
From: Frank David <frankdavidloanfirm3@gmail.com>
Date: Fri, 16 Aug 2024 20:02:33 -0700
Message-ID: <CACPaKzkW2vKy=1aYZxjUn0bJYEq2jQbQD3-gQKKV1ZVCPs89aA@mail.gmail.com>
To: fred112.peterson@gmail.com, peterson.54@mail.ru, 
 gerrybenardloanfirm@hotmail.com, ninoemmanuel49@gmail.com, 
 ninoemmanuel49@yandex.com, mrbobwood@hotmail.com, 
 elena.molockanowa1998@yandex.ru, boss@compania.com, Vladimir_okt@mail.ru, 
 meagankarterloanfunds@gmail.com, samantha5313@mail.ru, 
 britannialoaninvestment@hotmail.com, klarabannyfinance@gmail.com, 
 larry_ben11@hotmail.com, sveta.petrova99@yandex.ru, 
 mariaandersonloanfirm@hotmail.com, linkkese@yandex.com, koshy@india.hp.com, 
 aaron@freebsd.org, aaron@daltons.ca, ascope@cpan.org, adam@herzogdesigns.com, 
 adamw@freebsd.org, ade@freebsd.org, knu@freebsd.org, knu@idaemons.org, 
 alane@freebsd.org, ale@freebsd.org, kappa@freebsd.org.ua, ports@logvinov.com, 
 bland@freebsd.org, zaa@zaa.pp.ru, Alexander@leidinger.net, 
 ale@biancalanas.net, danfe@freebsd.org, alexis.praga@free.fr, ah@linux-hq.de, 
 reki@reki.ru, andrey.zverev@electro-com.ru, andrew@ugh.net.au, 
 ahumphrey@realestate.com.au, freeghb@gmail.com, 
 Andrew Pantyukhin <infofarmer@freebsd.org>, melanhit@gmail.com,
 andy@freebsd.org, anes@anes.su, 
 tobez@freebsd.org, tobez@tobez.org, toha@toha.org.ua, antonio@inf.ufsc.br, 
 wahjava@gmail.com, autrijus@autrijus.org, farrokhi@freebsd.org, 
 tuxsuximus@hotmail.com, woodsb02@freebsd.org, benno@jeamland.net, 
 bill.brinzer@gmail.com, billf@chc-chimes.com, unfurl@freebsd.org, 
 rde@ml1.org.uk, bsam@freebsd.org, B.Candler@pobox.com, brion@queeg.com, 
 cpm@fbsd.es, cpm@freebsd.org, cm@therek.net, clsung@freebsd.org, 
 jedgar@fxp.org, portmaster@bsdforge.com, cjk32@cam.ac.uk, 
 ports@onlineloop.com, clefevre@citeweb.net, dvl@freebsd.org, daniel@roe.ch, 
 dbaio@freebsd.org, bremner@unb.ca, obrien@freebsd.org, 
 dsze@alumni.uwaterloo.ca, catone@cpan.org, dhn@freebsd.org, 
 dikshie@sfc.wide.ad.jp, demon@gpad.ac.ru, dirk@freebsd.org, 
 ditesh@gathani.org, marck@freebsd.org, demon@freebsd.org, 
 klassert@mathematik.tu-chemnitz.de, dave@thedillows.org, linuxraid@lsi.com, 
 ajk@comnets.uni-bremen.de, nic_swsd@realtek.com, ericvh@gmail.com, 
 rminnich@sandia.gov, lucho@ionkov.net, v9fs-developer@lists.sourceforge.net, 
 alistair@devzero.co.uk, linux-acenic@sunsite.dk, peter@piie.net, 
 rui.zhang@intel.com, T-Bone@parisc-linux.org
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Apply for your Personal and Business loan at very low
 interest
 rate of 3% , please contact Email: frankdavidloanfirm3@gmail.com WhatsApp
 +523346239363 Apply for your Personal and Business loan at very low interest
 rate of 3% , please contact Email: frankdavidloanfirm3@gmail.com WhatsApp
 +523346239363 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.48 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.216.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.48 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [frankdavidloanfirm3[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frankdavidloanfirm3[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sf9iT-00062L-Nf
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Loan Offer
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Apply for your Personal and Business loan at very low interest rate of 3% ,
please contact Email: frankdavidloanfirm3@gmail.com WhatsApp +523346239363

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
