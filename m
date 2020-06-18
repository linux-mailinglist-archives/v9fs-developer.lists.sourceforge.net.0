Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EC71FFB8E
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 21:10:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jlzvD-0004Jn-EY; Thu, 18 Jun 2020 19:09:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jlzvB-0004Je-R4
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:09:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fciyHFdVN4SQdYBQGF2WXzzU8xVqizEuZMFpaUZrq6M=; b=EEWGwLKuADlI+F5KB/j+ww5PGW
 4EsXfZpvI7XbiBcTbU3H8cPwQAhj+EvQcgkx0dH3bp9yxIAnS3Uyp4nTsBINb1cHfAbQDNRi7dj0b
 NDQu6na4aoM6vRafWdm9rd3DsIivDkEQdW9vpl3ObxcpqsgCBV0C2IYiGhzv/tjEi/LA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fciyHFdVN4SQdYBQGF2WXzzU8xVqizEuZMFpaUZrq6M=; b=Sk9/44C7hKRUs3jU4731BAlja7
 3WUSlvjyTshEDnxMfwN8wKZSdWRqIBYIEBIUQoNgpgljWbMunIQyqKt3sFfBpQHQmdah0h3PKwXq7
 PXzxVyjAyd/9RkzbdriXfmo/DopMJvXa4/wL//uT3lxhlSY2S/tWUjmm+T5E9T9nBEZM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlzv9-008vY1-NG
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:09:57 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 8B12CC01F; Thu, 18 Jun 2020 21:09:49 +0200 (CEST)
Date: Thu, 18 Jun 2020 21:09:34 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Message-ID: <20200618190934.GB20699@nautica>
References: <20200618183417.5423-1-alexander.kapshuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618183417.5423-1-alexander.kapshuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlzv9-008vY1-NG
Subject: Re: [V9fs-developer] [PATCH] net/9p: Fix sparse endian warning in
 trans_fd.c
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Alexander Kapshuk wrote on Thu, Jun 18, 2020:
> Address sparse endian warning:
> net/9p/trans_fd.c:932:28: warning: incorrect type in assignment (different base types)
> net/9p/trans_fd.c:932:28:    expected restricted __be32 [addressable] [assigned] [usertype] s_addr
> net/9p/trans_fd.c:932:28:    got unsigned long
> 
> Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>

INADDR_ANY is 0 so this really is noop but sure, less warnings is always
good. I'll take this one for 5.9.
Thanks!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
