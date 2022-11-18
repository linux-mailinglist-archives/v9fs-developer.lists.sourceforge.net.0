Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E0A62EE1A
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 08:09:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovvV8-0000ru-3h;
	Fri, 18 Nov 2022 07:09:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangpeng362@huawei.com>) id 1ovvV5-0000rn-RP
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 07:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:CC:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p0N9z8ekRz6PorXGnJ+qT5LDvqYNwIZiUbqGBSEIfSI=; b=bHBodlX2NMsV7PcS0tvqGNCc3z
 vG3T1TO9CvaucO4y41zXPRcAv6rdOdjA1b4sToFmwGKlXLN4LeTZl1n3VntS1vnrt2ARgylgZjJgE
 uXAcoCPN1Bx7+Z8GAWlIiHWwPtJD8+Mj6nkY35aZK51GNM2c4Kaes1u4B0sFDYEaIc9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p0N9z8ekRz6PorXGnJ+qT5LDvqYNwIZiUbqGBSEIfSI=; b=U4StDG99AP50YflTtE28IR+VNr
 49Lvz2UTGOUcfPnNGB+XABWM0An4Gs0XELn2y+qS3/cWIpK5sTXoM4vjtlvZfZr1tQGxZG/KZAdwP
 Y+mvvqGZ9VVUtyjeyO2HsQG1VzsjmPYGC8fmTjO25cenxcM+gczWqfuFgJ8i7ttAh/1I=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovvUz-00BwyJ-3y for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 07:09:21 +0000
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4ND79D6mcHzJnqQ;
 Fri, 18 Nov 2022 15:05:52 +0800 (CST)
Received: from kwepemm600020.china.huawei.com (7.193.23.147) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 15:09:03 +0800
Received: from [10.174.179.160] (10.174.179.160) by
 kwepemm600020.china.huawei.com (7.193.23.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 15:09:02 +0800
Message-ID: <2f428592-f084-a36f-42ba-709848c460c4@huawei.com>
Date: Fri, 18 Nov 2022 15:09:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: David Howells <dhowells@redhat.com>
References: <54854a71-5856-f80f-d8cb-ab75b826ba5f@huawei.com>
 <166869954095.3793579.8500020902371015443.stgit@warthog.procyon.org.uk>
 <4193090.1668754852@warthog.procyon.org.uk>
In-Reply-To: <4193090.1668754852@warthog.procyon.org.uk>
X-Originating-IP: [10.174.179.160]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm600020.china.huawei.com (7.193.23.147)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > zhangpeng (AS)<zhangpeng362@huawei.com> wrote: > >> Thanks
 for your advice. The size needs to be able to hold up to 255 to >> handle
 larger keys. After testing, this patch works fine. > Can I put yo [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ovvUz-00BwyJ-3y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH] fscache: fix OOB Read in
 __fscache_acquire_volume
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
From: "zhangpeng \(AS\) via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "zhangpeng \(AS\)" <zhangpeng362@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

> zhangpeng (AS)<zhangpeng362@huawei.com>  wrote:
>
>> Thanks for your advice. The size needs to be able to hold up to 255 to
>> handle larger keys. After testing, this patch works fine.
> Can I put you down as a Reviewed-by or Tested-by?
>
> Thanks,
> David

Of course, you can.
Reviewed-by: Zhang Peng<zhangpeng362@huawei.com>

Zhang Peng

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
