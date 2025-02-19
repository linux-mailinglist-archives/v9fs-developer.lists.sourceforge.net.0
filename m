Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF34A3CBEB
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Feb 2025 23:01:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tks8Q-0000hF-Ci;
	Wed, 19 Feb 2025 22:01:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sendonly880@bright.fukuoka.jp>) id 1tks8P-0000h8-49
 for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :Subject:To:From:List-Unsubscribe:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmAfSKfcPnOgbjNiDuPcLc1TEZWOqWgYMzcvKYf+39I=; b=BcRZITohuHKpWgJFZ/bdBxIRgv
 tUymqLpY4RPWhCdbRJRFYHLl6kBdJUA0duaqqvmKOPYZfSYuCyy3RM6/Ckz+zf76RaIWQs/jrcPUV
 vAvFux9hGE0oHphKNKAS8ZCdhv6DDOxBUdcuske8pp6KqOmm59pVBpbTWWicbSN3FV9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:To:From:
 List-Unsubscribe:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmAfSKfcPnOgbjNiDuPcLc1TEZWOqWgYMzcvKYf+39I=; b=emclnXQzCY3iLjuDzGcCV25d/P
 25S/Bp0nYH9MUd5/V9hoWtoft5WbSRASNG0Z7ragnPdF/QlYOCFdPXFSW5yDdYkp8vPCwX0zy1kNY
 3WJ+Hw/5ONz8YltUlsHr3ShnijgHUTPdsA7YLm/xNCNzk5Vs+AlWsK8ImElrOoDaMAS8=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tks8N-0000RN-Ks for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:01:36 +0000
Received: by mail-pl1-f195.google.com with SMTP id
 d9443c01a7336-220e989edb6so6124965ad.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 19 Feb 2025 14:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bright.fukuoka.jp; s=google; t=1740002490; x=1740607290;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:subject:to:from
 :list-unsubscribe-post:list-unsubscribe:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bmAfSKfcPnOgbjNiDuPcLc1TEZWOqWgYMzcvKYf+39I=;
 b=GbaQuuPawPVaF4JaaPwMfmnJknKTgVmKJkPuXVPPV/QSyYTkiBW0DiCbAi+4hcVauK
 xsia9bu6+UahsjCzcsHQrOPSyYVKGPTY6QsVBvFPR/1Iwg3BrQyScCfteIKs2+lJGB+4
 Gak4zaBevMOKVXmFF9lgzIXJWjAvyFXaelQz3Fqbd74D4CgGkP0edIIANjVgLv2HvTqn
 3iJ2HF0IwYalUKFVj8FJk0aDLAkuhhUyg+A2JOtgTAtAM08jjBAcT4Uqkk6uBXd4CG9A
 9xZ4nX/l3gVIqC5VJiaxM9c7T9mK+bOk0/EZY3gyXGzRa/PSTt54fQYlvf93dTtkK4gM
 ZiWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740002490; x=1740607290;
 h=content-transfer-encoding:mime-version:subject:to:from
 :list-unsubscribe-post:list-unsubscribe:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bmAfSKfcPnOgbjNiDuPcLc1TEZWOqWgYMzcvKYf+39I=;
 b=fex6dz8tWFp5RAfIcTjZ6tvD4u8miS9axa4siwimw8/jAY7JrXC5AUvBukDM8m4N0s
 WrFG1HseuMNHEArQbrvFzkvkVBEl0zm+e1NokeSqUZW7znkegkR7XLCDN4pIvwrl94kv
 8+WMg0AYx09xM7NIR9zFLIMn5FU5US+wDCA+CF5A1Dd1gIyLW+1vsDOofBWFppO1I7oI
 uXJJmmkedNYBpEvlzOyDQrPxq37Jkc4JMfof7t+BfM9bZmVXcgX4kzlfDcqvlRhqNDBc
 ntBzsq07x58hz33IlNacS06U70phvL9DmlrNWLR49LWZ8XI0IUqpoHkecVc2ftMFzcqJ
 xTDw==
X-Gm-Message-State: AOJu0YyUSiiy6u/ohj0Jjw+Ky4qE8Y6L4ySWCvJaV5TaEwI6rN92f0h6
 ipawX23YR4np0Mwv8xvCqcLhKv1/4OvifyJRLeDSNBWwVrvfZmpW17QK/VBAe6Xs1BFsWJj7yTm
 Px24=
X-Gm-Gg: ASbGncv+mo9DE91qaJp9P4WSwE+0zkKf4RgOxMpQUzXu0oNWL6ngXF3uOOvSVL3rB+E
 XWl9jbpVejphWy0zXxdn6hgN4KSs4u+qD1TTZZqSvfgvnihFhAMwG5Peuu07mfXuzHX642kxeSz
 awcgkntjdqwnBBCZysP3Oau0K6RTDtxLU/wQkUeyHxuPZPY6iPn5JjXGM32Qkio6Ph2OrBlVgJM
 073HuzHIZ5hrHvjGr2beE2QxNl0ksr6lhb879vDAQnYN2e5eSA+Nvlio3CLjWl/Byy0TUPA0H21
 WC7CTWPPs1AJl3NSwHy8ZQ6PUCZEKSVYAO1+qYK2rLU7QGh04hpR
X-Google-Smtp-Source: AGHT+IGStMWXVQiMi+DoErKzJfrQ39sxYWzLAuvz8MPqXfd/5oXG/6umAwFQ4I315FQ+MapREUvn2g==
X-Received: by 2002:a05:6a20:4311:b0:1ee:c7c8:cad with SMTP id
 adf61e73a8af0-1eec7c80e29mr14725940637.28.1740002490016; 
 Wed, 19 Feb 2025 14:01:30 -0800 (PST)
Received: from ca (c-73-48-163-134.hsd1.ca.comcast.net. [73.48.163.134])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7326d58d4d0sm8173854b3a.94.2025.02.19.14.01.29
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2025 14:01:29 -0800 (PST)
Message-ID: <67b654b9.050a0220.12a47.38d4@mx.google.com>
Date: Wed, 19 Feb 2025 14:01:29 -0800 (PST)
X-Google-Original-Date: Wed, 19 Feb 2025 22:01:20 +000
X-Yahoo-Newman-Property: optinmailpf
X-Yahoo-Newman-Id: 3a01932d-c318-46b2-960f-8f988c2f0537
X-yahoo-newman-expires: 1739890800
List-Unsubscribe-Post: List-Unsubscribe=One-Click
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  $BJ?AG$h$j!"#J#A%M%C%H%P%s%/$r$4MxMQ$$$?$@$-!"$"$j$,
 $H$&$4$6$$$^$9!#(B
 $BEv9T$O!"$*5RMM$K0BA4$G0B?4$J<h0z4D6-$rDs6!$9$k$?$a!"FC<l:>5=KI;
 _!"%^%M!<!&%m!<%s%@%j%s%0BP:v!"%F%m; q6b6!M?KI; _$K<h$jAH$s$G$$
 [...] Content analysis details:   (1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: hhpsi.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.195 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.195 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tks8N-0000RN-Ks
Subject: [V9fs-developer] =?iso-2022-jp?b?GyRCPGgwekxcRSpFeSROM05HJyROGyhC?=
 =?iso-2022-jp?b?GyRCJCo0aiQkGyhC?=
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
From: =?ISO-2022-JP?B?SkEbJEIlTSVDJUglUCVzJS8bKEI=?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?ISO-2022-JP?B?SkEbJEIlTSVDJUglUCVzJS8bKEI=?=
 <sendonly880@bright.fukuoka.jp>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

$BJ?AG$h$j!"#J#A%M%C%H%P%s%/$r$4MxMQ$$$?$@$-!"$"$j$,$H$&$4$6$$$^$9!#(B
$BEv9T$O!"$*5RMM$K0BA4$G0B?4$J<h0z4D6-$rDs6!$9$k$?$a!"FC<l:>5=KI;_!"%^%M!<!&%m!<%s%@%j%s%0BP:v!"%F%m;q6b6!M?KI;_$K<h$jAH$s$G$$$^$9!#(B

$B$=$N0l4D$H$7$F!"Dj4|E*$K!V$*<h0zL\E*Ey$N3NG'!W$r$*4j$$$7$F$*$j$^$9!#$3$l$O!"HH:a<}1W0\E>KI;_K!$*$h$S6bM;D#$N%,%$%I%i%$%s$K4p$E$/$b$N$G!"$*5RMM$N>pJs!J=;=j!"?&6H!"<h0zL\E*Ey!K$r3NG'$9$k$?$a$N$b$N$G$9!#(B

$B!Z3NG'$N$*4j$$![(B
2025$BG/(B2$B7n(B21$BF|$^$G$K!"2<5-$N%j%s%/$h$j$4<+?H$N>pJs$r$43NG'$/$@$5$$!#(B

$B"'$*<h0zL\E*Ey$N3NG'(B
https://hhpsi.com/jeremia.html

$B!Z3NG'8e$N<h0z$K$D$$$F![(B
$B3NG'8e$ODL>oDL$j$*<h0z$$$?$@$1$^$9$,!"4|F|Fb$K3NG'$$$?$@$1$J$$>l9g!"%"%+%&%s%H<h0z$K@)8B$,$+$+$k>l9g$,$"$j$^$9$N$G!"$4N;>5$/$@$5$$!#(B

$B!Z=EMW![(B
$B$43NG'FbMF$K8m$j$,$J$$$+$43NG'$$$?$@$-!"JQ99$,$"$C$?>l9g$OB.$d$+$KBP1~$r$*4j$$$7$^$9!#4|F|$^$G$K3NG'$,40N;$7$J$$>l9g!"$*<h0z$K@)8B$,$+$+$k$3$H$,$"$j$^$9!#(B

$B$*<j?t$r$*$+$1$$$?$7$^$9$,!"2?B4$46(NO$r$*4j$$?=$7>e$2$^$9!#(B

$B(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(B
$B!Z$*Ld$$9g$o$;Ak8}![(B
0120-058-098
$B!J<uIU;~4V!'J?F|(B 9:00-17:00$B!K(B

$B:#8e$H$b!"#J#A%M%C%H%P%s%/$r$h$m$7$/$*4j$$?=$7>e$2$^$9!#(B
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
