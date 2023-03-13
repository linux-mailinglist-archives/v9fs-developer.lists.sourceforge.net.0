Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9E56B7B16
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 15:53:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbjYQ-0002K1-VG;
	Mon, 13 Mar 2023 14:53:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.swiatkowski@linux.intel.com>)
 id 1pbjYQ-0002Jv-4g for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aqByCc2+8quGfwvr6YWnjHQ1lRnP7NvdBhRR/g3ih0Q=; b=WjeqB3BqaGKx6dqd6tIn2YZ2O9
 s/5JuDFOR60uUhc4Ap70Aat4dlQKB2LS4wWIIUw9+OMyaRuzusQCwf7go0lYtvlFeprdjuMGnZbv5
 37wtQBBH52RozM4APO/EWZkiG0NZ15V5rSCUiJEhkh7jaZFzZYzhwnfWdbxD+aezN0Gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aqByCc2+8quGfwvr6YWnjHQ1lRnP7NvdBhRR/g3ih0Q=; b=JA51jYZuI7zPsmSS6eNToC4rvq
 RnVdF5WNk8jk7s513JV09sH3xGSdlPvvQsO/J0XohLFCBqGj/xcjL+pb0Mc/N46u6Nj691dkcJUoC
 0W0USHpxSq0FnLmLR/A1LdVNvPLrCY9S7wQ+A0d8UzcvaRiuiaStWNL5GEdI8kIdvsD8=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbjYP-006Zkn-J4 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678719217; x=1710255217;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nWyVkNca+rSYnnhnxhsyHqJhvIyoVCvZWVEP37M7+mg=;
 b=hrmzzJ/AscW3/oTanR3oowcHewnddarNIjkGSPen9h78yYtRKX0f3ycT
 b8DxNxL0RnfoNwNel8GhYSeEwbyAX/XaM+kSwz/Gjd1J85si2dfpz5wV9
 +eEj/rn0dK/0bluToUcoRSlBiIblM5jwn98UYXcjwqvjDfeDIFRLpJHki
 Eujw6uc+DeB/tUSR0CS8KPQx80B1vaRjTJboB/ih2rOIs1bXBh3khkG9r
 YFklxj8OY5Y7ev1+O0pyJ8H8J3re7n0uTO7nj9eOlDZud7z1WclnJoJ0g
 dmJfPxZR9u1/aGYxXmw4I0tDfV8EdXaWsd5RzwxdJtBY6KFx8UiLfMPaU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="337186815"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="337186815"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="681066548"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="681066548"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:53:28 -0700
Date: Mon, 13 Mar 2023 15:53:20 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Zheng Wang <zyytlz.wz@163.com>
Message-ID: <ZA844NfrYjj+lHy7@localhost.localdomain>
References: <20230313144325.3622082-1-zyytlz.wz@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313144325.3622082-1-zyytlz.wz@163.com>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 13, 2023 at 10:43:25PM +0800, Zheng Wang wrote:
 > In xen_9pfs_front_probe, it calls xen_9pfs_front_alloc_dataring > to init
 priv->rings and bound &ring->work with p9_xen_response. > > When [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbjYP-006Zkn-J4
Subject: Re: [V9fs-developer] [PATCH net v3] 9p/xen : Fix use after free bug
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

On Mon, Mar 13, 2023 at 10:43:25PM +0800, Zheng Wang wrote:
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
> v3:
> - remove unnecessary comment and move definition to the
> for loop suggested by Michal Swiatkowski
> 
> v2:
> - fix type error of ring found by kernel test robot
> ---
>  net/9p/trans_xen.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
[...]

Thanks for changes
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
