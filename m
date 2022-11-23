Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC699636997
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 20:09:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxv7U-00080u-E3;
	Wed, 23 Nov 2022 19:09:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1oxv7R-00080n-Hg
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 19:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPgzuaoqHuz3hc6GKBXrRYZsP8U7EhvDm+I1zVt6Kyc=; b=IE6wF/osDHWkWX6AHl/As9QoTI
 uMBsJfOfYYZ9SlclgZRBMSVgNXTpr32ORe8RnDlIhgscmyUxrE8Uix8WeqTE240SpMrzJqDO771Mq
 MMD0Kvp7S+oSxyR/v0L8h1QfSCNmACRFuTdfKPTFhO0ZPN89BWEf8wxIGdJo49GF44e8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yPgzuaoqHuz3hc6GKBXrRYZsP8U7EhvDm+I1zVt6Kyc=; b=AsI0Zc4fZ2lXzu2043okdwwF3h
 xuXWqPNEgyQVGiNzAyKfj+fdFEgcccNmJZKWbFbjSQRqO7D2+ahzZt+wODMlug1xCJ1kbYf9KAlMo
 I5MuwQkYIl+wBkaGTMNrNrn6VxziadWjGh7PO4h0v8DQZORH4dGMjK0KxocC69q17e7g=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxv7P-00GuW5-NX for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 19:09:13 +0000
Received: by mail-qk1-f181.google.com with SMTP id x18so13140152qki.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 11:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yPgzuaoqHuz3hc6GKBXrRYZsP8U7EhvDm+I1zVt6Kyc=;
 b=EFNC4tQlvCILCh89xvIkqHD2HaIjFKosUdVGMRAv1CFQL71EGGppxAhkFklcwgTSBC
 DHCoZhz3mvQ7jOPniFnrjTEdj3Ju25j/2/tkns12FsXfLuvllqmlGAwtDPqcAFeaDJST
 IkO304Om2ISQ4EzhQM5kzUC5yFRh1EPVo8X9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yPgzuaoqHuz3hc6GKBXrRYZsP8U7EhvDm+I1zVt6Kyc=;
 b=FLPIcodprmc3k2JOi+4aBOvsdm4Gj6SGHBHBuG1liCPAKmuakWWxhGG+SGsFYOo9Ng
 bttxLYpTCXIvyDpf4wBjC5NDVO6+fZos62bPW01UHmGCCwM/T4dVxkh5bRuBTW8QRNW5
 a1SGzv1ImhS4lE/FaRBernLBbeB3P7XQE6DFfb5kbK8tFk3GPV1nQStqtPxADYB8W2EO
 V2ZFeoK+mJUFISE+0Ai7sctL7COOEjPCsBQSMODxLu28x6Mr+JHwFHEd46EE04bZQcWh
 TRC6dWR8LJMxIh5fVbF75Zv8uCJMyzdFgXMZH4uSDFZDquugeHIQ6H2igWtGUuAl7p6J
 qAXw==
X-Gm-Message-State: ANoB5pnYK1Gv8ast3LEgOFqIrBdVzZmc1pLhln+atsVaKdOnTYFvLt5L
 VWwpnXZpJClxH+lij8NCDDCRO66YtKU8lQ==
X-Google-Smtp-Source: AA0mqf5G8dwsIWZRY3wqd8nAHsy3OP6gHS8xOgwqfjK0mbUF2u5/xhv7QYDbcBEM31l4sJooRgxqaA==
X-Received: by 2002:a37:58a:0:b0:6fa:d64:c018 with SMTP id
 132-20020a37058a000000b006fa0d64c018mr10845977qkf.145.1669230545598; 
 Wed, 23 Nov 2022 11:09:05 -0800 (PST)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com.
 [209.85.219.51]) by smtp.gmail.com with ESMTPSA id
 u18-20020a05620a455200b006cdd0939ffbsm12968977qkp.86.2022.11.23.11.09.04
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Nov 2022 11:09:05 -0800 (PST)
Received: by mail-qv1-f51.google.com with SMTP id s18so11177301qvo.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 11:09:04 -0800 (PST)
X-Received: by 2002:ad4:4101:0:b0:4b1:856b:4277 with SMTP id
 i1-20020ad44101000000b004b1856b4277mr9787467qvp.129.1669230544666; Wed, 23
 Nov 2022 11:09:04 -0800 (PST)
MIME-Version: 1.0
References: <Y32sfX54JJbldBIt@codewreck.org>
In-Reply-To: <Y32sfX54JJbldBIt@codewreck.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Nov 2022 11:08:48 -0800
X-Gmail-Original-Message-ID: <CAHk-=winPSOAoRAc3vUSy9UZ-kLpjehVkEsncbiyqZ4cZfV0xg@mail.gmail.com>
Message-ID: <CAHk-=winPSOAoRAc3vUSy9UZ-kLpjehVkEsncbiyqZ4cZfV0xg@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 22,
 2022 at 9:16 PM Dominique Martinet <asmadeus@codewreck.org>
 wrote: > > net/9p/trans_fd.c | 24 +++++++++++++ > net/9p/trans_xen.c | 9
 +++++++++ > 2 files changed, 22 insertio [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oxv7P-00GuW5-NX
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.1-rc7
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 22, 2022 at 9:16 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
>  net/9p/trans_fd.c  | 24 +++++++++++++-----------
>  net/9p/trans_xen.c |  9 +++++++++
>  2 files changed, 22 insertions(+), 11 deletions(-)
>  9 files changed, 254 insertions(+), 28 deletions(-)

Strange bogus second line of statistics.

But the first line looks right, and I've pulled it. I'm assuming this
is some odd cut-and-paste error on your part where you had some stale
data from before.

               Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
