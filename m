Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCA56B798A
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 14:54:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbidL-0003TB-3C;
	Mon, 13 Mar 2023 13:54:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.swiatkowski@linux.intel.com>)
 id 1pbidJ-0003Sw-Gr for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XMeJNo/STNMIFWIRSdaCp40tBEOA27pQgoq+u5oc9iI=; b=E80pYPRnw+4fnFXKJNQef7WLk2
 c3cYh/n+H7AncdLfZLUzYV134h3ztvPg4q8z9xMFNr8aCoE2IG7WoDFB26r/6gTi8AbuUTaEyyClc
 DO92HX+8RyQVibDlK2HgXvt8hJeL+S++JUUHzc+6aHpYmyUzdGZWrpqFZ0EnL0Eemt7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XMeJNo/STNMIFWIRSdaCp40tBEOA27pQgoq+u5oc9iI=; b=JrHHMpYgBj1HUEbRZM+r6UNWte
 iEDU0XvV6M9CBmPk08FTDCxXEZnRtApA3+lcM6DKBEaLuHZHCBGviasphTUcDtiqGzpTED/3s6cEx
 91RQrQmAHA12F5yCWXrkAZDu2HQO6RqxItP7MdkDgk4AFIXA5XnuVSeDyViCOzzWQdtY=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbidJ-006XQ2-19 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 13:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678715676; x=1710251676;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8EoYPm5xEQrXeCcnAVT/F8N4W4AYyn4iKdyRBjBLcKg=;
 b=edQzZAxxjPqbNkDWz/eeMpU4S0S7RLGRPcUsHC4IQC3yTuiqQ9pSXpv+
 OPl1ZhLWAg0CEGIj74vkDJvSdgMgl53+W8qZCIw6M6ZLUdL72yZAkL7pT
 1/zGrSlKmetFzpwmdtnFmevuEyT8P343gmmNqdbttBscUVd3FMnWalu6o
 egkLzT7VMb5aajEWV/KH5zvq9pXDyapO52Hl2fy/L6jsoYQXfqA7o6qxQ
 zxqwct8MH220+7auUueTgbaTYI5ppjKKIBb7ZEsLrPoPHoQbfWzEklbTN
 7os5mJERpp8atSNGWYjwyNJxq2B0fIVkz3aOWIAegWeCyFi50SthZr+YD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="364813317"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="364813317"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 06:54:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="788939110"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="788939110"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 06:54:28 -0700
Date: Mon, 13 Mar 2023 14:54:20 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Zheng Wang <zyytlz.wz@163.com>
Message-ID: <ZA8rDCw+mJmyETEx@localhost.localdomain>
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313090002.3308025-1-zyytlz.wz@163.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 13, 2023 at 05:00:02PM +0800, Zheng Wang wrote:
 > In xen_9pfs_front_probe, it calls xen_9pfs_front_alloc_dataring > to init
 priv->rings and bound &ring->work with p9_xen_response. > > When [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbidJ-006XQ2-19
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
Cc: lucho@ionkov.net, alex000young@gmail.com, ericvh@gmail.com,
 netdev@vger.kernel.org, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 hackerzheng666@gmail.com, 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Mar 13, 2023 at 05:00:02PM +0800, Zheng Wang wrote:
> In xen_9pfs_front_probe, it calls xen_9pfs_front_alloc_dataring
> to init priv->rings and bound &ring->work with p9_xen_response.
> 
> When it calls xen_9pfs_front_event_handler to handle IRQ requests,
> it will finally call schedule_work to start the work.
> 
> When we call xen_9pfs_front_remove to remove the driver, there
> may be a sequence as follows:
> 
> Fix it by finishing the work before cleanup in xen_9pfs_front_free.
> 
> Note that, this bug is found by static analysis, which might be
> false positive.
> 
> CPU0                  CPU1
> 
>                      |p9_xen_response
> xen_9pfs_front_remove|
>   xen_9pfs_front_free|
> kfree(priv)          |
> //free priv          |
>                      |p9_tag_lookup
>                      |//use priv->client
> 
> Fixes: 71ebd71921e4 ("xen/9pfs: connect to the backend")
> Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
> ---
> v2:
> - fix type error of ring found by kernel test robot
> ---
>  net/9p/trans_xen.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> index c64050e839ac..83764431c066 100644
> --- a/net/9p/trans_xen.c
> +++ b/net/9p/trans_xen.c
> @@ -274,12 +274,17 @@ static const struct xenbus_device_id xen_9pfs_front_ids[] = {
>  static void xen_9pfs_front_free(struct xen_9pfs_front_priv *priv)
>  {
>  	int i, j;
> +	struct xen_9pfs_dataring *ring = NULL;
Move it before int i, j to have RCT.

>  
>  	write_lock(&xen_9pfs_lock);
>  	list_del(&priv->list);
>  	write_unlock(&xen_9pfs_lock);
>  
>  	for (i = 0; i < priv->num_rings; i++) {
> +		/*cancel work*/
It isn't needed I think, the function cancel_work_sync() tells everything
here.

> +		ring = &priv->rings[i];
> +		cancel_work_sync(&ring->work);
> +
>  		if (!priv->rings[i].intf)
>  			break;
>  		if (priv->rings[i].irq > 0)
> -- 
> 2.25.1


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
