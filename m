Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF73828DF
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 May 2021 11:55:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1liZyU-0003Wj-0P; Mon, 17 May 2021 09:55:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1liZyS-0003WY-Fn
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 09:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iGA5eSg+mjfIWtklRF7HSD5WpIudKPdX6AmBTYCPB8g=; b=KE8G/IeYwVnwJTQeZGMmon8ZmD
 G2mKrYzFExgxK3k8jN1keg2NfdKqBXEmc7BHAn9RH4LdIMZG+6gkQLfUdzMtEB9x+IiwGRpmAD2Ds
 BBkSrA/R0LKnPkzjxd/TXin9tzrziuaW1rr5hugOxnaTO/5MVdI25BGDwA5ZodzM6FxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iGA5eSg+mjfIWtklRF7HSD5WpIudKPdX6AmBTYCPB8g=; b=gn9ep1GJenB3K0ct9WWSdZumf0
 0dR60AfdpS4uTIW2yXg/Q0HjjIQ7p9/Q+QdKVfR/cZKdHOa603bVWWaS19xnvilOnpt8eFGzyzPod
 T5vXwvw9WYUk/FQidi50PIfx8YDVXNZkBaePoKoc4EsQ/e9L9/Yr/ErDqqfudszoUbUE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1liZyP-00BICz-4X
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 09:55:46 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2D7A1C01B; Mon, 17 May 2021 11:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621245332; bh=iGA5eSg+mjfIWtklRF7HSD5WpIudKPdX6AmBTYCPB8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SGmjDd+6RsTbV4emCbR4gw3SkQDoD+eYX4su0RY20iS3iK2LxXVrZrmtbyes4yOqX
 yC1Q5LaKuXc1NI4KYedS0ZT7230HuqgdCRO4bFLhGiWOTz5iZS5RBCFKHKbsVM3c9S
 93JuKG+csGcOHSQ6N/YwXbeqNApjoMbQudp/IptdZAzPHLRR2cszfD5Rw2/Zs23AHa
 EtFy5OLLnvAAqOh4sXIND7TpoXi5QLx+CjzBL+JFsyDqaBrRENzMCt+io+STPJNXSU
 VcyWyHTlsFmMZ2j6EV9ClLRJR0+X758AYVc9tSuA7otAoGE2DLTXAaAZA7w6Ianhrj
 7ae16Z0tCkC+Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2D8D8C01B;
 Mon, 17 May 2021 11:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621245331; bh=iGA5eSg+mjfIWtklRF7HSD5WpIudKPdX6AmBTYCPB8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JeQjdANHXOZW0xK7N2g342pEnK9Wk/zFm2MvsiDnabxxpLnCGFuWUDUS6cEbBr2EO
 MqtxQgmAWH4aeB01H8ufPmZ6JCnub5obWHV8U8XE2S2T3nrc3XuNsG69onrf4Arsm7
 O89cmDHEYTpnnuHipIvLL8NNkDDD+6yKD2S7zoWz0dvOpCjMOKi7F6ekyVWiOHTr/v
 wdPRjLBZ18g9zBDIzgBdZLV78PB7AW8YNnDW+gbEIIm+QK38++hJlcNSRowpYkFsU0
 4t4a9wUzAPCUVBCyalqPqFB5Y6SsoN1oglMlDzxeeJNdbKpJKxmSpgGEENQGyC/cKW
 427wlmgkKsGNg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e628bed6;
 Mon, 17 May 2021 09:55:27 +0000 (UTC)
Date: Mon, 17 May 2021 18:55:12 +0900
From: asmadeus@codewreck.org
To: Xie Yongji <xieyongji@bytedance.com>
Message-ID: <YKI9gHMjbz8nAvYp@codewreck.org>
References: <20210517083557.172-1-xieyongji@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517083557.172-1-xieyongji@bytedance.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1liZyP-00BICz-4X
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_virtio: Remove sysfs file on
 probe failure
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Xie Yongji wrote on Mon, May 17, 2021 at 04:35:57PM +0800:
> This ensures we don't leak the sysfs file if we failed to
> allocate chan->vc_wq during probe.

Right.
I'll add a Fixed tag and take to -next shortly

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
