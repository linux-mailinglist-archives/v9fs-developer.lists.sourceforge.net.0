Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227B2A1F50
	for <lists+v9fs-developer@lfdr.de>; Sun,  1 Nov 2020 16:54:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kZFgU-0000Yy-53; Sun, 01 Nov 2020 15:54:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@lunn.ch>) id 1kZFgS-0000Yo-SE
 for v9fs-developer@lists.sourceforge.net; Sun, 01 Nov 2020 15:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVtcP9tds2aiPbuDWySO13w3HN9s0M7CHuosEA/6uIA=; b=Lzn6COtpZMBbu5zRTfLxToHZBw
 FkRhgLG+v3ZzsNwP8gmsrPNTtJuyVrdjIZ+hZEwdeWjf9wG17C/b5EsaHG11sTkBrWiuL+CPFon9v
 YeexGVo2QosNp9Z4TBnoNQKdJkvLP3pegO2KNKwLfzPFKY/B2kGeT7QDk3bOmRo+4paQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NVtcP9tds2aiPbuDWySO13w3HN9s0M7CHuosEA/6uIA=; b=lj95ZQJTaA4UqpBkz/BD0LaAPA
 fStiTL6snBrr0duzHTicsufj5GEwlh0GH3yR5OnJvHSpGaPZOcntNkUShLTQQdGwO2GKvDpbka8VK
 g/Wvb1GlJ1317MjyQG/z2g33Vx2C9pUhcH26nfqDVAX9zI2JVw9SLJl3SRbNbaIMS4Hw=;
Received: from vps0.lunn.ch ([185.16.172.187])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kZFgQ-00FOkp-Ic
 for v9fs-developer@lists.sourceforge.net; Sun, 01 Nov 2020 15:54:20 +0000
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kZFgD-004enM-Tk; Sun, 01 Nov 2020 16:54:05 +0100
Date: Sun, 1 Nov 2020 16:54:05 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20201101155405.GA1109407@lunn.ch>
References: <20201031182655.1082065-1-andrew@lunn.ch>
 <20201031205813.GA624@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031205813.GA624@nautica>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lunn.ch]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kZFgQ-00FOkp-Ic
Subject: Re: [V9fs-developer] [PATCH net-next] net: 9p: Fix kerneldoc
 warnings of missing parameters etc
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev <netdev@vger.kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Oct 31, 2020 at 09:58:13PM +0100, Dominique Martinet wrote:
> Andrew Lunn wrote on Sat, Oct 31, 2020:
> > net/9p/client.c:420: warning: Function parameter or member 'c' not described in 'p9_client_cb'
> > net/9p/client.c:420: warning: Function parameter or member 'req' not described in 'p9_client_cb'
> > net/9p/client.c:420: warning: Function parameter or member 'status' not described in 'p9_client_cb'
> > net/9p/client.c:568: warning: Function parameter or member 'uidata' not described in 'p9_check_zc_errors'
> > net/9p/trans_common.c:23: warning: Function parameter or member 'nr_pages' not described in 'p9_release_pages'
> > net/9p/trans_common.c:23: warning: Function parameter or member 'pages' not described in 'p9_release_pages'
> > net/9p/trans_fd.c:132: warning: Function parameter or member 'rreq' not described in 'p9_conn'
> > net/9p/trans_fd.c:132: warning: Function parameter or member 'wreq' not described in 'p9_conn'
> > net/9p/trans_fd.c:56: warning: Function parameter or member 'privport' not described in 'p9_fd_opts'
> > net/9p/trans_rdma.c:113: warning: Function parameter or member 'cqe' not described in 'p9_rdma_context'
> > net/9p/trans_rdma.c:129: warning: Function parameter or member 'privport' not described in 'p9_rdma_opts'
> > net/9p/trans_virtio.c:215: warning: Function parameter or member 'limit' not described in 'pack_sg_list_p'
> > net/9p/trans_virtio.c:83: warning: Function parameter or member 'chan_list' not described in 'virtio_chan'
> > net/9p/trans_virtio.c:83: warning: Function parameter or member 'p9_max_pages' not described in 'virtio_chan'
> > net/9p/trans_virtio.c:83: warning: Function parameter or member 'ring_bufs_avail' not described in 'virtio_chan'
> > net/9p/trans_virtio.c:83: warning: Function parameter or member 'tag' not described in 'virtio_chan'
> > net/9p/trans_virtio.c:83: warning: Function parameter or member 'vc_wq' not described in 'virtio_chan'
> > 
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> 
> Thanks, LGTM I'll take this for next cycle unless someone is grabbing
> these

Hi Dominique

I hope to turn on W=1 by default soon in most of /net. That patch is
likely to go to net-next.

What route do your patches normally take to Linus? Do you send a pull
request to net-next? Or straight to Linus?

If this patch is not in net-next, i cannot enable it for 9p. So
either:

1) I leave 9p without W=1, and there is a risk it gains new warnings
   which nobody notices

2) I send the W=1 enablement for 9p to you, but it does nothing in
   your tree because you don't have the rest of the patches. Any new
   warnings will appear in next, assuming 9p is merged into next, i've
   not checked that.

3) I expect there to be a stable branch with the base patches needed
   for W=1 by default. You can pull that into your tree, along with a
   patch to actually enable it in 9p. You then get to know about new
   warnings.

4) Jakub takes this patch into net-next, and i can then enable W=1 in
   9p along with all the other sub-directories. We will get to know
   about new warnings in net-next, and next, but not in your tree.

   Andrew


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
