Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA14AD0732
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Jun 2025 19:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Date:To:Message-ID:From:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ATyOwjEzhKftki00dP09iqyrw4VzPiSFj9fNZsei3ww=; b=aFm+29ZNwduWET8cjvWXGbvtXx
	ZQtgiLBlV1XBDAlphWdUrqy+369OYK1pWBllIPiWvS81r5v6+xpui4HSOYIERZOMBs0UUm4y3O8m7
	ulr2tMbPI2KFpr8t8QG9nso0H10gDShhSiiltGwjpOn/QFu+TZ760r7zknVxqJ21aT48=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uNaYW-0003eD-Tb;
	Fri, 06 Jun 2025 17:08:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mdjasimuddin7517@gmail.com>) id 1uNaYV-0003e6-DZ
 for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jun 2025 17:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 Message-ID:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=roul7bKIit+eMfWO06AQLeI15PRrod1dzMvSnJ8xMss=; b=B6HgakxFx99eWHDWpZVBGZ+Q52
 +Z0BCzMIfJnej8m7CJLtKWw67x+Z5tSQqi8zvdp4TJX64K12w1GV8duFfpPWgkbmRs/UdNkso5LV+
 L6HDWgB8q7o1C1QNquAq5L8ceNi9VGD/JwJO5TViAMAUhrjL8l7xK9/JMI7xKFG0+kX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:Message-ID:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=roul7bKIit+eMfWO06AQLeI15PRrod1dzMvSnJ8xMss=; b=O
 PTZxJkKoCN3mP7vxIIJ0s4TzJKJhUFQQqRHNuBYRXAAByubyjwCorZOs+nj7HwjNWjI/gPuOEBfAE
 3k89U3cBTxs41rPKRUp02v+iXrA1Am79Olw8zyoOWFC5DW6e96OPU8LmvMTeoIBDGKKi+qRTcRdjV
 LpkrkNrcX+XluP6Q=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uNaYV-0005Y7-4B for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jun 2025 17:08:35 +0000
Received: by mail-pl1-f195.google.com with SMTP id
 d9443c01a7336-2352e3db62cso24047625ad.2
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 06 Jun 2025 10:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749229704; x=1749834504; darn=lists.sourceforge.net;
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=roul7bKIit+eMfWO06AQLeI15PRrod1dzMvSnJ8xMss=;
 b=B8oeGsqtYZJTyuwmUcRB+QoVpLubqp7Fu4ie+l4TyRFIfPsLOvbtc2POqKHLYayUO6
 Ho4d9wckZ0WSV5zEi1ets+bYHSso/wExY303q9gAwT3WxF2iTbzk12ztdu+YAqHuKct3
 s8tPmu2rhmXc0jqVeTR0Dq/wKJXU8xVYJwdR71kOj4rJJ2YEhdgzJlRuWoOyKAjHubpy
 BI1uii0yKVN0HuVGXuTrgIkVTNBkDBx9/VTGYz6k8vejP2WCNbEpFXWaYgwonuKtss9b
 1ejmXwJdUdaldV/+yFbzd+Gg1wh0DBQoWH01m/k4oWpiNCvPJUTYxfwmOYrqLcvAEMJD
 THIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749229704; x=1749834504;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=roul7bKIit+eMfWO06AQLeI15PRrod1dzMvSnJ8xMss=;
 b=N2psBePJILdOO8Tp7gtngX0QSMpS8iuNEpf2CuPgsscE0eifbqfRFTgcrYHG5kkfgW
 Wd4rL0yqnMSgTByflNCrXGO7OjFtCOOlJPxAQjluLJwexLb2pGys6H5wHYVgV9ucxb3W
 CGZpUuWozFAMoQn/dwAW/0XakNGokw8ZV9SK+nk6MXZt+w4ZN9qMVozdiISpshLYeUoW
 gBxxzhCWTRF1X9GKM7mpSZ550P9V5X2U45UrIM7pyamkAN1m/ApemgeGbUkdNBkAaIdC
 2SaAW8ijXXo7JtHjmqgAVMMmR15qxHScexei2LKHVx2uexgRqVAV6MjrWg5gAoUJbtyd
 p4+A==
X-Gm-Message-State: AOJu0YxVAmsO+1HE32/Y2XhWj1fwXFWvR+ExhPyayE1MGuwWFPfoDNOB
 7TT/5aikZG+EHcL8xRDPfcXnloG1JVnFRiFtEfJiAs47gxZsIVRPHa7ZgMktkjwV
X-Gm-Gg: ASbGncv94FXHOQL3UB4UX7PD760J8YPYx13kYGSHnnksaJf3LZ9MJNCEjC7vgmKfChQ
 OcN9qrwzzNoZxocMC/pVxns91RDtW1ugJb6KUK1euQJgceA+F89UBve4Iqd/qmB5/k1kAEvol5H
 ajNKxFWhg3LDsf6afHeBuEvGmfvaG7zuC00GLC1cBffx/oMPJw2JN79FtXusYAXWBXPd7sXXKnW
 yZGdIOjtlGzubUZ6dQp7Na5emm6wVNZOZqdFIPchVCGOZgUQd4TONYylvK0O+4VlG2lTf/jH/gt
 xn1MsUI/rWEUosHyVA6aJ8zcsZbcFNPI+jDQfP2t+LxSP5qZ08B8MyDSMtohAhnRYRDzck8ibAt
 lNv5V63Je6sCTBFjG
X-Google-Smtp-Source: AGHT+IHMWortSsN6mIede1Lu9n/LBOG3sNfTNQ5+AsptSY45ItEngxyOW6BBQW39cRz2LQfs0y1g/A==
X-Received: by 2002:a17:902:e842:b0:235:eb8d:7fff with SMTP id
 d9443c01a7336-23601e78192mr59684585ad.28.1749229704124; 
 Fri, 06 Jun 2025 10:08:24 -0700 (PDT)
Received: from [103.237.86.211] ([103.237.86.211])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23603405110sm14509405ad.152.2025.06.06.10.08.23
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Jun 2025 10:08:23 -0700 (PDT)
From: Carol- USAID <mdjasimuddin7517@gmail.com>
X-Google-Original-From: Carol- USAID <Carol.gil@usaid.net>
Message-ID: <35a27830e6247352495c203b8616cb9ff27cbe154ae80165915fe948bd4f4ede@mx.google.com>
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 06 Jun 2025 17:08:22 +0700
MIME-Version: 1.0
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I'm giving out my late husband's Yamaha Baby Grand
 Piano to any passionate instrument lover, kindly let me know if you will be
 interested or have someone who will. Thanks, Carol. 
 Content analysis details:   (2.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 [carolgilmore71(at)outlook.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [mdjasimuddin7517(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [mdjasimuddin7517(at)gmail.com]
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uNaYV-0005Y7-4B
Subject: [V9fs-developer] June 06 25
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
Reply-To: carolgilmore71@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,
I'm giving out my late husband's Yamaha Baby Grand Piano to any passionate instrument lover, kindly let me know if you will be interested or have someone who will.

Thanks,

Carol.











_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
