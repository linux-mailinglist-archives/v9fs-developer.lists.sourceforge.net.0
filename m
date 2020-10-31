Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B032A1A9A
	for <lists+v9fs-developer@lfdr.de>; Sat, 31 Oct 2020 21:58:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kYxxf-00026W-Fp; Sat, 31 Oct 2020 20:58:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kYxxd-00026N-NU
 for v9fs-developer@lists.sourceforge.net; Sat, 31 Oct 2020 20:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vj2X1YbCj1Q36UAWFOYJ2Kq980yJo+mtwsittCILE1E=; b=LziZN1uhGRFt/Ldq3ObIGrN6Pr
 dqVzb8GCRorcoeWyxN7IXusCjTH2wSB+zh0RINPCelNeBwkmXW8Kga81Se/nogMA1jvO1t/9d/nC3
 l9LQx4CxRCfPD9hcTpretk71y/k/eGMtO/qyOccC16prWP9hSCYgZOiWv2MFkj/vX5Ek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vj2X1YbCj1Q36UAWFOYJ2Kq980yJo+mtwsittCILE1E=; b=kic6+LHtYPWeZ0LhIwNfvGXZhJ
 Ui3GOIiyRfOHcTBT3saKXrDs/0iB8UCvFo6ipmHHpaR7vPuByo3PIOVyNHNL26kGb4GLrRfb/2/Bz
 3dBZvdBgGAPWxIs3pRHx6rwkrfjMpgNyGxiNg8XzRrpv/FL+MH6Zy72iOE00PJxE8C0U=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYxxU-00EZK1-Gh
 for v9fs-developer@lists.sourceforge.net; Sat, 31 Oct 2020 20:58:53 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id EE882C01B; Sat, 31 Oct 2020 21:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1604177908; bh=vj2X1YbCj1Q36UAWFOYJ2Kq980yJo+mtwsittCILE1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c41OV1LgaEtFHLqZcCI2xyzpMJ1NA4GsQOoNgZ0fuVEhyDaIKA3mvzzMp5DuOnJKY
 Y0+HWTT5kM9qUyYuRI/9yN+pAc4piKv/BCYmWdxt0gduKuQf/tYt52IevQBZOU9WRC
 xzpWw4LTkVsqQy4k/4ie/xDu1B/Lkz4phYyFMLOi3dRoW6ahFHwwnPvjZHvAWjJw7t
 16cUF8XWm7vSHspLJ1aMIM6ZOZx9ix+pNHU2Ec9doqen/e35348BDvoByAlckZAsk+
 V0zs23N4bI3sa/ED3pGuQQfS4jmaD4pMXlF9EMLTpNKXxOWP5GkuOwyNIBZk3igUKn
 2Sqtxyxs+mrtA==
Date: Sat, 31 Oct 2020 21:58:13 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20201031205813.GA624@nautica>
References: <20201031182655.1082065-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031182655.1082065-1-andrew@lunn.ch>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lunn.ch]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kYxxU-00EZK1-Gh
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

Andrew Lunn wrote on Sat, Oct 31, 2020:
> net/9p/client.c:420: warning: Function parameter or member 'c' not described in 'p9_client_cb'
> net/9p/client.c:420: warning: Function parameter or member 'req' not described in 'p9_client_cb'
> net/9p/client.c:420: warning: Function parameter or member 'status' not described in 'p9_client_cb'
> net/9p/client.c:568: warning: Function parameter or member 'uidata' not described in 'p9_check_zc_errors'
> net/9p/trans_common.c:23: warning: Function parameter or member 'nr_pages' not described in 'p9_release_pages'
> net/9p/trans_common.c:23: warning: Function parameter or member 'pages' not described in 'p9_release_pages'
> net/9p/trans_fd.c:132: warning: Function parameter or member 'rreq' not described in 'p9_conn'
> net/9p/trans_fd.c:132: warning: Function parameter or member 'wreq' not described in 'p9_conn'
> net/9p/trans_fd.c:56: warning: Function parameter or member 'privport' not described in 'p9_fd_opts'
> net/9p/trans_rdma.c:113: warning: Function parameter or member 'cqe' not described in 'p9_rdma_context'
> net/9p/trans_rdma.c:129: warning: Function parameter or member 'privport' not described in 'p9_rdma_opts'
> net/9p/trans_virtio.c:215: warning: Function parameter or member 'limit' not described in 'pack_sg_list_p'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'chan_list' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'p9_max_pages' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'ring_bufs_avail' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'tag' not described in 'virtio_chan'
> net/9p/trans_virtio.c:83: warning: Function parameter or member 'vc_wq' not described in 'virtio_chan'
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Thanks, LGTM I'll take this for next cycle unless someone is grabbing
these
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
