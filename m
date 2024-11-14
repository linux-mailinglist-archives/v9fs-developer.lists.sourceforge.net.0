Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7029C8BC3
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Nov 2024 14:26:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tBZs5-0008V5-3C;
	Thu, 14 Nov 2024 13:26:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mvulini.henry@gmail.com>) id 1tBZs3-0008Uq-6j
 for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 13:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 Message-ID:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BX28rAzmD4iiFzVyOHBt728GRE15tu8MjCYp4yUF6Zs=; b=SInZpxYZ2/abFGMV92HjrgX3yO
 MdADha62BC4Kn+8agoLxSRVISr09oo/6uOHoCi+cQyXe+Lz2asXPlCd3ABJzp2digVhP9JC91iIVP
 gQLc2pJ0c4OwitNryx5snuPjQ0ybLqogHOZXb828jFcfMtsTY/nNhAPj6NWBF1nfmPIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:Message-ID:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BX28rAzmD4iiFzVyOHBt728GRE15tu8MjCYp4yUF6Zs=; b=M
 l0CN1rii1dybY+wu6M6qijyN08YSz5Mv1aU2LG0Ml2iMQEA1hTTAyPshABQLXHTXFcUwzrEH8Kqp0
 3vrg29N4dOabAOW18QP4CqUp89CHBnhV4xfBi40QOrLNPFPxBr+F7inxIECXGduCHLplARyz4yQCR
 Lk1TUN9dyBlm+pms=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tBZs2-0003lk-Ls for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 13:26:51 +0000
Received: by mail-pl1-f194.google.com with SMTP id
 d9443c01a7336-20c9978a221so6845775ad.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 14 Nov 2024 05:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731590799; x=1732195599; darn=lists.sourceforge.net;
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BX28rAzmD4iiFzVyOHBt728GRE15tu8MjCYp4yUF6Zs=;
 b=Jp09uOh0/xq1ore22tq+4CobbC+WvLKosKRiU44VEKyvaa+YG4K9AeCI4c7+MYFyYf
 nk8q5CKUrqBEywWaLDfCUeVhp8dvpG7ofXLPzsxdBoJNUckg7E0IFzZivRnnVxa1TYd7
 0fgRmCI4sdufJtBHWAab22qBEWUpAr/UGdJ2I02jwg7bVcjg0LCZQ9EYHwdeZNWoZFmf
 d+S8O2fODM8kw4+3viB3XwWOHuEWXJS5msZXMAv4bE+rgoh1P6SklZMXyuT/jGNY4NIA
 M7ZLNiFUzVfzKtKy8gzGTbkOwXujEe8uczbXHCi+tbowF59Hwui7bkbvzrR5cYg0WLk2
 StgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731590799; x=1732195599;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BX28rAzmD4iiFzVyOHBt728GRE15tu8MjCYp4yUF6Zs=;
 b=KXTZrqg0JK9u7YPCU3mBo+Nmi3s1fleEzEi58tDn9VsYRalF8f5CHECoJ+vaR+viBd
 h2YDGpLAVgJQ/5SHmt1kr0YRJtDfXes1YT5Y0UtkuBI38X9l9za5VNj5jpMe7zS/NJB5
 rzuavRsBUec4SfLptKAYlQGF0uQVGeSTjg4BwOtvAWYF/P5n6Ub+pkx6iGxDCLW0UKGJ
 5lLZ8HOVKLc6r2ZiRWcTDRQBznV0atp+QldLmXizYfMBS/fMFElho+28fdwOE2aV/xDU
 38G/YHXot7Uv25FHr8dcJJTPhvml7ucYShvjdPEKrS+8lDpAICCf3VrWhDxlRnoV2Xgu
 mnog==
X-Gm-Message-State: AOJu0Yw8hywV+SHpfcySSMb6Bmhbp+/oRGPb65iJr5eDC5sXAO/i3OEy
 MHQJi/pqD8yut5V/Aotw4GLMwtM5NLT8THx9fyT0y1aXqv6CfSKt17cqNUf4
X-Google-Smtp-Source: AGHT+IF/oZ40oOX6U6aKeYyRoFFiPgoSXprTydNMv5ovM9GB0x4sWUP8u6JdxN6+OY1HMTeUohkl6w==
X-Received: by 2002:a17:903:2448:b0:20c:f27f:fbf with SMTP id
 d9443c01a7336-21183ceaa93mr343311225ad.25.1731590798958; 
 Thu, 14 Nov 2024 05:26:38 -0800 (PST)
Received: from [103.67.163.162] ([103.67.163.162])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-211c7c28c8esm10513985ad.24.2024.11.14.05.26.37
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2024 05:26:38 -0800 (PST)
From: Debbie Magoffin <mvulini.henry@gmail.com>
X-Google-Original-From: Debbie Magoffin <dmagoffin@outlook.com>
Message-ID: <4e343050a1c07f39c2b2ba6c7677881fb03ef488fb4cfe4b56346a31c783e1e6@mx.google.com>
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 14 Nov 2024 08:26:37 -0500
MIME-Version: 1.0
X-Spam-Score: 7.8 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I am offering my late husband?s Yamaha piano to anyone
 who would truly appreciate it. If you or someone you know would be interested
 in receiving this instrument for free, please do not hesitate to co [...]
 Content analysis details:   (7.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 5.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.67.163.162>]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mvulini.henry[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.194 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.194 listed in sa-trusted.bondedsender.org]
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1tBZs2-0003lk-Ls
Subject: [V9fs-developer] Yamaha Piano !!
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
Reply-To: dmagoffin@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

I am offering my late husband?s Yamaha piano to anyone who would truly appreciate it. If you or someone you know would be interested in receiving this instrument for free, please do not hesitate to contact me.

Warm regards,
Debbie


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
