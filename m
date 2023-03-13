Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C77066B83FE
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 22:31:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbpl5-0005im-C1;
	Mon, 13 Mar 2023 21:31:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kuba@kernel.org>) id 1pbpl4-0005ig-LL
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 21:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XKZ0nBSofOBy4MRmNczC6C0UiN3jGH9GJYbrFIBJRJA=; b=aViHJuDMzEQ19vuS490d6jPFFD
 z88E4EYvYqc13Ufiu2vnkToNLAnuwDbSw+WXnz4szB0qx3ukO25RHa2wAfjtQAYxG9OdoOnjOvvGu
 C61GLaFOH3W5tv7vEl0fJsRrGa8kikXJK7ZkIv8cfmqV+yg7FSvZTDjstSncv4xlOVxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XKZ0nBSofOBy4MRmNczC6C0UiN3jGH9GJYbrFIBJRJA=; b=Df59VW/7fhNzcp6WKWPE6H7rFh
 +EsWl+qXObx3iEH5OZyI8xJ+cxDCLsQnTQE+myZ62KoA7QrRHQGEbiyGsn3Kh1OG8PYGMwacklSQo
 mj/ij2veNapSrU50uz8UvgiueGGaLHXraTNF+qy8HuzLcZLrs2kINus5hMDp/tMr84Bs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbpl1-006nsU-L0 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 21:31:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5377BB815CB;
 Mon, 13 Mar 2023 21:30:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 968C2C433EF;
 Mon, 13 Mar 2023 21:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678743056;
 bh=R+WwqoKh0zISD9Xarl/rtQ2nfnBou/E1Hvs+a5wGQK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ek1s+QMFPSxstNjHuSAf7o9BoIcjKgs5XDMvqzEzyL0xU12gtqkUh3qcKt0k/alG8
 ZRyttzce25fyEKBTbtxN9wWweFxLRVZl+VaPRF4QjkURQthDTBOZidy0sly29/tWWw
 zcR1ZSQLJFGtS0EDx1YebEXzP9FGAuu34zX0QlEPnCsSGNTtQHQttEA0awmF8X9sc9
 78Pe/+HLEx/7hQDm9Q7rYHJERcC8Y2jpX5kXOIwQtapoz1tTVADyaDPMZqIQaHLXpo
 fdxPP3EJndSemVi7QoqKN2yyVL4qUFt4eKz1C2GP2wmetfkLSPCe3ws1G0u+656llD
 yh3kT9QC7bAnw==
Date: Mon, 13 Mar 2023 14:30:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230313143054.538565ac@kernel.org>
In-Reply-To: <ZA8rDCw+mJmyETEx@localhost.localdomain>
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 13 Mar 2023 14:54:20 +0100 Michal Swiatkowski wrote:
 > > @@ -274, 12 +274,
 17 @@ static const struct xenbus_device_id xen_9pfs_front_ids[]
 = { > > static void xen_9pfs_front_free(struct xen_9pfs [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbpl1-006nsU-L0
Subject: Re: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug
 in xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, pabeni@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, hackerzheng666@gmail.com,
 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, Zheng Wang <zyytlz.wz@163.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 13 Mar 2023 14:54:20 +0100 Michal Swiatkowski wrote:
> > @@ -274,12 +274,17 @@ static const struct xenbus_device_id xen_9pfs_front_ids[] = {
> >  static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
> >  {
> >  	int i, j;
> > +	struct xen_9pfs_dataring *ring = NULL;  
> Move it before int i, j to have RCT.
> 
> >  
> >  	write_lock(&xen_9pfs_lock);
> >  	list_del(&priv->list);
> >  	write_unlock(&xen_9pfs_lock);
> >  
> >  	for (i = 0; i < priv->num_rings; i++) {
> > +		/*cancel work*/  
> It isn't needed I think, the function cancel_work_sync() tells everything
> here.

Note that 9p is more storage than networking, so this patch is likely
to go via a different tree than us.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
