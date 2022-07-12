Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5027457284E
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 23:13:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBNCU-0006oh-Rv; Tue, 12 Jul 2022 21:13:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBNCT-0006ob-LY
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 21:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1uRYgxUvXSWHHlXdts6WD5ZdpUJe0/o4CU9U9uBN3iw=; b=hA87NXeF3mb4nlLFoZ/VQ691tS
 vWanBRNJlzQzgkhL/r+KSdOPv/uukT+hW3JXn3CjN3i56k8e9yhaUkPrFZS5zKK+SaHTdBJ+UIt2j
 s+QK7IkUVLwNrDT4v2XpG1OyFJnKbOEFzQ772Pg95nRkAI1bNcul9fcbhiMVTrE0b4+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1uRYgxUvXSWHHlXdts6WD5ZdpUJe0/o4CU9U9uBN3iw=; b=jMOS+rXVGUPS1ZK0bCHW8McViJ
 SgqiItalqSqHGLO9lWQC5fMKz+EXXMc5BG3bq3CH9cRaw8uPnl9C+trA8aDEZighaZfp3AZJg+1j+
 pn/kd3ssN0BN9FFAnE8+NUdzDKwJ3cl6Xx+Hqzgx0ajdTe6svluwYiWey/veAKotk8Is=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBNCR-00F5re-Ir
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 21:13:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 514ECC009; Tue, 12 Jul 2022 23:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657660417; bh=1uRYgxUvXSWHHlXdts6WD5ZdpUJe0/o4CU9U9uBN3iw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BSR8pqpFCjH47FB4d/bLlLg5qZmy3JfF2+tEapF248cL/pZ8MYdWELLASRZ16qNCw
 QwqIA0gvfkJQLQSZ7/F1jC3Rcnw7fiABdDdtEglz4lijuFFPqJjWJXVRB0NRzuBDkr
 MZ33jQ01GiqWRBeW5xoUl3AW+C+xtON8uxyI84FhW2k/DBGc3kUZPdA5EaCbZZVM3M
 rxe/Qe8NSbhhslsXyWcTyArFuZzZTkh87QX/tTY9GoSCB+xsiUOzUzOjZj5nsdUUSy
 Du/3dZFR3znvCS0P5ClEZXvkOKC3lG6/5S5G9YrDHZ1fJ82GgyYC+dOkl+d9c+6bwn
 awyzVK0OLXyuw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8746AC009;
 Tue, 12 Jul 2022 23:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657660416; bh=1uRYgxUvXSWHHlXdts6WD5ZdpUJe0/o4CU9U9uBN3iw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TgPOQN4TnIjIdJ10R4G6YKEkog5Q6leummnpaJJ62jbU7EMlkl08Oyo89VKC8p5Gw
 YewwMI0ebZ/6+1p6lzMg7BH0uiZ1RpXkuEM7FwKU3ObQ8ch/laiVDqb16diL4nMj2O
 sDs7+9bnu5MwI6oaicPQ2dU/eNU+AJWa+d7C6gIwA8w59J0vkkqHPzzj8UI0w5T2nx
 q1atArnTNnVIaiCUX0EP8v6R8fLGV/cgUCVFBGEXQI2tq6WxYEHwYrsdqVJ8xTU5UF
 F0LdghO9UCgzkrIhgQzHYu5416UEaapAra0eGfWJuNScw00f1EvXzUg6KOVW9SNXto
 zFSMkMMdEib/Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 75c16631;
 Tue, 12 Jul 2022 21:13:31 +0000 (UTC)
Date: Wed, 13 Jul 2022 06:13:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys3j7KucZGdFkttA@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Alright;
 anything I didn't reply to looks good to me. Christian
 Schoenebeck wrote on Tue, Jul 12, 2022 at 04:35:54PM +0200: > OVERVIEW OF
 PATCHES: > > * Patches 1..6 remove the msize limitation from the 'virtio'
 transport > (i.e. the 9p 'virtio' transpor [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBNCR-00F5re-Ir
Subject: Re: [V9fs-developer] [PATCH v5 00/11] remove msize limit in virtio
 transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Alright; anything I didn't reply to looks good to me.

Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:35:54PM +0200:
> OVERVIEW OF PATCHES:
> 
> * Patches 1..6 remove the msize limitation from the 'virtio' transport
>   (i.e. the 9p 'virtio' transport itself actually supports >4MB now, tested
>   successfully with an experimental QEMU version and some dirty 9p Linux
>   client hacks up to msize=128MB).

I have no problem with this except for the small nitpicks I gave, but
would be tempted to delay this part for one more cycle as it's really
independant -- what do you think?


> * Patch 7 limits msize for all transports to 4 MB for now as >4MB would need
>   more work on 9p client level (see commit log of patch 7 for details).
> 
> * Patches 8..11 tremendously reduce unnecessarily huge 9p message sizes and
>   therefore provide performance gain as well. So far, almost all 9p messages
>   simply allocated message buffers exactly msize large, even for messages
>   that actually just needed few bytes. So these patches make sense by
>   themselves, independent of this overall series, however for this series
>   even more, because the larger msize, the more this issue would have hurt
>   otherwise.

time-wise we're getting close to the merge window already (probably in 2
weeks), how confident are you in this?
I can take patches 8..11 in -next now and probably find some time to
test over next weekend, are we good?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
