Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EFB21DEBE
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 19:29:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv2GA-0001iJ-Rb; Mon, 13 Jul 2020 17:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <corbet@lwn.net>) id 1jv2G9-0001i5-K1
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 17:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=id1rhBQGES/1dwOLc4MCPGCE2gY29WD0IQ2m29h8FlU=; b=LV/krmJ84AOyRg0A1joFJk8/SU
 INK8/YbUY5IjkMjq2QyRvhQJF9lKd5vEDzfuNgI0sVGBseIndZEF9rY8l6GUg/f0wDT5o45mnCrA3
 QGT510r63YZDiRTW4ZC0PWwZ5P7miC2mMky1c3A9XO1fO5wyvaDWD4iAT7S15CDl9wpk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=id1rhBQGES/1dwOLc4MCPGCE2gY29WD0IQ2m29h8FlU=; b=V+kXBrUc4RmjjzWKIQNse5vBMi
 T83oAz2fp83W9T4KUXJX1r1VIe6isCeQrasvh47/MMg6k9x8yqko1Z3WPmMpnVYFdn7hxDTsRHrwK
 FokTHFuDYqzlGqPAY2tfMYMu39IPKjo+HLUNMrkVaEoXM+3gxR03Es4XtofKTzP+vW8g=;
Received: from ms.lwn.net ([45.79.88.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jv2G8-005iOx-Bl
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 17:28:57 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id D48D2823;
 Mon, 13 Jul 2020 17:28:50 +0000 (UTC)
Date: Mon, 13 Jul 2020 11:28:49 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <20200713112849.0190b29b@lwn.net>
In-Reply-To: <20200708145804.14887-1-grandmaster@al2klimov.de>
References: <20200708145804.14887-1-grandmaster@al2klimov.de>
Organization: LWN.net
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv2G8-005iOx-Bl
Subject: Re: [V9fs-developer] [PATCH] Replace HTTP links with HTTPS ones: 9P
 FILE SYSTEM
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
Cc: lucho@ionkov.net, linux-doc@vger.kernel.org, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed,  8 Jul 2020 16:58:04 +0200
"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

>  Documentation/filesystems/9p.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> index 2995279ddc24..7b5964bc8865 100644
> --- a/Documentation/filesystems/9p.rst
> +++ b/Documentation/filesystems/9p.rst
> @@ -18,7 +18,7 @@ and Maya Gokhale.  Additional development by Greg Watson
>  The best detailed explanation of the Linux implementation and applications of
>  the 9p client is available in the form of a USENIX paper:
>  
> -   http://www.usenix.org/events/usenix05/tech/freenix/hensbergen.html
> +   https://www.usenix.org/events/usenix05/tech/freenix/hensbergen.html
>  
Applied, thanks.

jon


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
