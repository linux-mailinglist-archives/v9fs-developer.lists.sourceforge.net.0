Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0B5649A2
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Jul 2022 21:46:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o85YP-0007ny-VX; Sun, 03 Jul 2022 19:46:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o85YO-0007ns-MT
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 19:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KQ6C8KeFwunjITrxXd1N62GR8QW5BA613iKF9xglW04=; b=Rqv4i4A346rR2l/PXcr4fJSoIM
 ydtLjJ+r52d279arGug1KKwNVpTpNEeOPYbGwk8GUQ6qfRIpKmeqtM29ysZv4Xq/BxmCJNBy0ZFp7
 7zTtVU6ckCNwPUYsHxobhN7n+2jesVBO4AWvwfa5JpGREaVIRmSwZvAG/3dHPBrfzJrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KQ6C8KeFwunjITrxXd1N62GR8QW5BA613iKF9xglW04=; b=Y
 VaF6kzmXRgHndstsafB/5czLPXPIeRO8WTI/E56mx8IaBbuQdhL8VHyEoEkqNONdL9OGrO9US/wc2
 BFv6Kxjv+wj0aS84Gp7ai9rqD8DljRp3+PeV3M/9mSQMjzT6ZKQmeZpfeR3A6KCkgRys50GW5bUUs
 Ltei74qABGZM6A0o=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o85YL-0004wh-4N
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 19:46:48 +0000
Received: by mail-qt1-f170.google.com with SMTP id c13so7317592qtq.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 12:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=KQ6C8KeFwunjITrxXd1N62GR8QW5BA613iKF9xglW04=;
 b=Lxdkb5xphDCM8eOe+Ywsa89soFw8KbRQVS8nPQP1oWPRuurNsasnbU7QDHk9OlG0HW
 Mn/7AfOhMZkXTv8NhJrhpVRyr9NujWxa4uvLzkZi2pMSjRJ3C7u2M9mexvffqEk/Jcc3
 iq0Sc/UHeSzFaVMnc/kQhgpULTHi3X2Ylqo6l5W2bQnk1kEe+wISaZDQyrejKSQxmk0R
 AGhfMO4MTzEdP45VlDBndmUqhhzxzjtARWyTVf8goBS/Pa90pCbwr/zftLE3K+mh/1bC
 i7riHzZXkkPEt4LfE17ErMnRe0lbckL+p+RqlOmnd3EwzrtlvU8z3DxOIQxYxq/fzd/M
 o18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=KQ6C8KeFwunjITrxXd1N62GR8QW5BA613iKF9xglW04=;
 b=kGeMzdELjrMrFzbbFiWYs/3R4tTUECXqnK62zHpnD7oStc+vraerOZYidoGPykz5I5
 LtOv3i7QyTKhA8aUIiWr90lOukYuRerp2JTz71onwYkea2R8gsT9oAQNn+V9THWYSAl+
 WFtIWZFLFweuQ2RrA+eG4rmLHlUHorXQag7eJ2pHWt8y1nAFl5jQmpoKAenwzoRnUjTq
 ZLn1naYxju2K5gQmBZj+7U9YJ3sstqMQX1yv4/uN1h9SfVvA/2sDr0UTnlfgim4Puf5Q
 viiQ7vBXZ/EaqvnxngqjMusfbxQ4mbgL+F5xBNWQTzoq6marZRg0uMX9kg1PbiufJvLm
 BjAw==
X-Gm-Message-State: AJIora/HnqS2HueK2jXkfvTCwwTEO5G1jzX9jJIDTE+RFzsHqrb++mI+
 +HXDYtBydzP8e7hggANFnB+JNeoQUYVaFFU=
X-Google-Smtp-Source: AGRyM1upr+ZD2S48cgNiCm11oG+4lT+Vqr2blkRcs80QIA0eky/Qwo5DVSNgxT314vnOVc5fOzE/aQ==
X-Received: by 2002:a05:6214:2588:b0:470:4592:1039 with SMTP id
 fq8-20020a056214258800b0047045921039mr24602307qvb.123.1656877598575; 
 Sun, 03 Jul 2022 12:46:38 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 cc18-20020a05622a411200b0031b7441b02asm12755142qtb.89.2022.07.03.12.46.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 12:46:37 -0700 (PDT)
Date: Sun, 3 Jul 2022 15:46:36 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: v9fs-developer@lists.sourceforge.net, ericvh@gmail.com,
 lucho@ionkov.net, asmadeus@codewreck.org
Message-ID: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey, so I've been hitting this page allocation failure in
 v9fs quite a lot and since I use it in my kernel testing infrastructure, it's
 been impacting test results quite a lot - I'm wondering if we mi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o85YL-0004wh-4N
Subject: [V9fs-developer] Memory allocation failure in v9fs
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
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

Hey, so I've been hitting this page allocation failure in v9fs quite a lot and
since I use it in my kernel testing infrastructure, it's been impacting test
results quite a lot - I'm wondering if we might be able to do something about
it. Example, from v5.18 + bcachefs:

https://evilpiepirate.org/~testdashboard/c794bfd75e534b05133db1035e4480159001e8c5/xfstests.generic.299

We're doing an order 5 allocation here, so the memory allocation failure is
unsurprising. Switching to kvmalloc would likely be good enough - but we appear
to be bouncing the entire write syscall, maybe we could not do that? Has that
been looked at at all?

Cheers,
Kent


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
