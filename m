Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C975E6B847F
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 23:08:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbqLJ-0007fm-JQ;
	Mon, 13 Mar 2023 22:08:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pbqLA-0007ff-KN
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 22:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+3hvHtxOKm+x6xuyu0609vnA9psaq5/XZ9w8PURWMRU=; b=fGgDdLoXiQKVGGNPi3D4IvNUEL
 L6Qgb9Jcqtb2hZ9/hqwbfzOGYY27zWPZrkgVL0yA2E1ngGgCojcOZI/3V/TsRKh19mZltLhXCXsWp
 ThlqK2NMS+YgQkXLr206xIv2TifdDcpi9cP8wXFBQjnWUp8G/GxfcVQXVOXN/Kbb95cg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+3hvHtxOKm+x6xuyu0609vnA9psaq5/XZ9w8PURWMRU=; b=JSHFzC5W7XR/fgkys4oM1kKZnx
 wQO0UrocZdiI5pik7WAsJD/1FgiSX4qzZQ27AlwJMzpY45ioe/mR5dgcFs0QcffidmY11Tgp0zHnn
 yCvxk9HqXvgrpzjkl1gL5xsgC03OmhUWEj2aassCvh5r6R+MHloF8v/mTrY/GZTY3wBI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbqL5-0006H4-Sl for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 22:08:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AF13BC022; Mon, 13 Mar 2023 23:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1678745291; bh=+3hvHtxOKm+x6xuyu0609vnA9psaq5/XZ9w8PURWMRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q+2XhhEmo/HDRno8AcK7DIjIlwDBBoI9AjEIliJyR3jmF+Tcrw/QNSnpg5zmoPyGs
 zgvmeDVWk4QBnDDbDxvMBvJyFR2ArH90Q0pL/xDLXD1c5i+ItneOwPw6ofzh13Abg5
 mmpc2ERt94S4gUIWMWTqG9d07BmqM5RZ7LorNsR/7J5u7D7tHy7ousQLhbG4xlfTr5
 83LG1XRtL9wEwDxxwwqT7tB2ygiBhAqP+hSWpU4XcauoFKk5+yehHhf19DWLsTDZ1+
 1wR6mQTd5x4WE0swSdMwBc6bwH9ZAMsrpRb4T7+/bGydM3WJ1/PtU5vqal1Up+yUyL
 DMfCjbo3U17gw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8E47AC009;
 Mon, 13 Mar 2023 23:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1678745290; bh=+3hvHtxOKm+x6xuyu0609vnA9psaq5/XZ9w8PURWMRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rcbznV7IIhDUoiRMQf+9vd8Sj3wcDKpZ+Cy0hZ3mqu41tU4AP6shdcIuZc/VTPKi4
 GG9CQ2i8yR8P5QwdHxsV50BSKxAM2aZnBEiWErmcj9XF387Nvg3HOOHa4Umow75y5o
 t3UF7DmTP1lARsf0T4cLPpRW7suxpSBcc1SixliJFc5gwo2MB9s8cHw/dHZ2AhspqS
 mR8hU62q1V3+MfSXLNfFmDaPiVOvbn8qzSOKaB/zrUIfC97rkHM3TlCkBdR8UqTPn7
 C6Y633Qb3S/UOxn5ZaUvUZVff+TtMbF8zsXDhomvmK0ANSmA9/knZaQFIJqnFNsKNm
 XJ8RD08WOMuYA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 86503e90;
 Mon, 13 Mar 2023 22:08:03 +0000 (UTC)
Date: Tue, 14 Mar 2023 07:07:48 +0900
From: asmadeus@codewreck.org
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZA+etMBFSw/999Aq@codewreck.org>
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
 <20230313143054.538565ac@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313143054.538565ac@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jakub Kicinski wrote on Mon, Mar 13,
 2023 at 02:30:54PM -0700:
 > On Mon, 13 Mar 2023 14:54:20 +0100 Michal Swiatkowski wrote: > > > for
 (i = 0; i < priv->num_rings; i++) { > > > + /*cancel work*/ > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pbqL5-0006H4-Sl
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
 v9fs-developer@lists.sourceforge.net,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Zheng Wang <zyytlz.wz@163.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jakub Kicinski wrote on Mon, Mar 13, 2023 at 02:30:54PM -0700:
> On Mon, 13 Mar 2023 14:54:20 +0100 Michal Swiatkowski wrote:
> > >  	for (i = 0; i < priv->num_rings; i++) {
> > > +		/*cancel work*/  
> > It isn't needed I think, the function cancel_work_sync() tells everything
> > here.
> 
> Note that 9p is more storage than networking, so this patch is likely
> to go via a different tree than us.

Any review done is useful anyway ;)

Either Eric or me will take the patch, but in the past such fixes have
sometimes also been taken into the net tree; honestly I wouldn't mind a
bit more "rule" here as it's a bit weird that some of our patches are Cc
to fsdevel@ (fs/ from fs/9p) and the other half netdev@ (net/ from
net/9p), but afaict the MAINTAINERS syntax doesn't have a way of
excluding e.g. net/9p from the `NETWORKING [GENERAL]` group so I guess
we just have to live with that.

There's little enough volume and netdev automation sends a mail when a
patch is picked up, so as long as there's no conflict (large majority of
the cases) such fixes can go either way as far as I'm concerned.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
