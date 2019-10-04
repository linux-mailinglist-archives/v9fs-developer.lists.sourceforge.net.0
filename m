Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F45ECBED4
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Oct 2019 17:15:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iGPIX-0005mP-Ow; Fri, 04 Oct 2019 15:15:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1iGPIW-0005lz-4D
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Oct 2019 15:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FVFlITuqkjAxlG4KV1JRku1jLkBQifOD9jIjRPI+jcI=; b=TSvTk9uRVWMQ0+X6zoBNkgcttp
 lO/oSkYd7ZkrYgUeRV+uH9ZQrdwGqRPQiZRW9ig5ZAv9ATqRt91C/t/16eX94mV+cYDrx8TGKs6lP
 kb5Vq4zaHORlDka7tWvXYT6ExARRrPGBJiHskBbpqug1WimKoxXDoewhuMoYy/Q6Hr2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FVFlITuqkjAxlG4KV1JRku1jLkBQifOD9jIjRPI+jcI=; b=a9Oue4NvCtCTHHrro8Bh00uK3/
 0IGM3NLi15+cI1J9S7k+fMQPfgpiHc1+Df2n2GxEepnQMDQBpgTfymU3KfRJurdoNqbJmkIom4VkA
 9yjlXbavCPFZ6gLB+d/A3IVIdOTx/nzqkolIDvBM9tUpC+VhwhL2xQzaQmsCMVwmuNUw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iGPIU-004l9u-5c
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Oct 2019 15:15:12 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 92FF5C009; Fri,  4 Oct 2019 17:15:03 +0200 (CEST)
Date: Fri, 4 Oct 2019 17:14:48 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20191004151448.GA19056@nautica>
References: <20191004145016.3970-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004145016.3970-1-krzk@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iGPIU-004l9u-5c
Subject: Re: [V9fs-developer] [RESEND TRIVIAL] fs: Fix Kconfig indentation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Krzysztof Kozlowski wrote on Fri, Oct 04, 2019:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Send this to kernel-janitors@vger.kernel.org ?

I can't pick this up as a 9p maintainer and most probably everyone else
in copy feel similar, this is stuff where they might be able to handle
this smoothly.

(I have no problem with the 9p part of the patch, so add my ack or
whatever if you feel that is useful, but it's honestly trivial as you
wrote yourself)

Cheers,
-- 
Asmadeus | Dominique Martinet


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
