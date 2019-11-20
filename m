Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE38103CE2
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Nov 2019 15:02:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iXQYd-0007zs-Lj; Wed, 20 Nov 2019 14:02:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1iXQYc-0007zl-6T
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Nov 2019 14:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=apv9CEBmVhlaEi48vHocqX8Wo0yOuRPirrYl2mXTraA=; b=fq73xB1B3ONoIXJ1CU6oYIm9HB
 QZKw1fpVe4J8LBdOyNl85SN5Xmau5l2CG2PzlX8DmVL681jPiZqCEbAnnG1+i87BcZK8zMv0Yn/jz
 IGjv3DgKx2VpYNbiKmYN/vuf6YCFMCMMnBBVw7O9SWX9/Z1Mjncq6buoS4hFNuuABSLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=apv9CEBmVhlaEi48vHocqX8Wo0yOuRPirrYl2mXTraA=; b=LlxhJBQVqbyfGIv/WEQXIWnin+
 k8f4IgUvBVnLPq3EhCiNJMBZUe8WXOPmy+aH0dm9JpTH7xvpFZPzds4Cab3CVlAeylb+pim/HJFaq
 bMuBMFreJcFtbGfWXV4CHT20ZA+YHrohO2Ap6a5TOvUCR5O6r7lzN+9MJWF1aJgJvNzM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXQYZ-00E8Lu-Vx
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Nov 2019 14:02:10 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 4ED5BC009; Wed, 20 Nov 2019 15:02:01 +0100 (CET)
Date: Wed, 20 Nov 2019 15:01:46 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20191120140146.GA21065@nautica>
References: <20191120134340.16770-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120134340.16770-1-krzk@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iXQYZ-00E8Lu-Vx
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix Kconfig indentation
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Krzysztof Kozlowski wrote on Wed, Nov 20, 2019:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig

I take it janitors weren't interested in these?

Since it's just 9p I can take it, but if this is the only patch I get it
might take a couple of months to get in.
Will do depending on your answer.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
