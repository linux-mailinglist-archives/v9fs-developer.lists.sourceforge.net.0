Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE26823CA
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Aug 2019 19:15:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hugaH-0002TZ-4T; Mon, 05 Aug 2019 17:15:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <chuck.lever@oracle.com>) id 1hugaG-0002TP-EW
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 17:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nPFbMWDy/GPZ7qzfaZqz6U6+uWj0/xLsMBVQnP4Sfiw=; b=XaVkYsLHDqdzSfwbIUzg/zqQHa
 HQ3PtVXkFrt0nHw99kHRTVvndZRX1pG9WuJeUNLX18Vu6CtHJXNpGdDEh/L1VsaLorK4E/OPSegSv
 rIdTu3jYyHOfCMrzGgUWzUWwyg8cSnFCyWLRFAth24Za8ywtgL7K6wiSELCwESqaIIKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nPFbMWDy/GPZ7qzfaZqz6U6+uWj0/xLsMBVQnP4Sfiw=; b=Ys9xLAR55YXEXjoHKxOCQ44Boi
 TKPb750GjxeWE0HjuKbY/E7rQ+2/9huUfn/caZBCyvCqRILL11haUsxWDugXZF6rPQODUkCYlggcB
 WpzfIy7CCP1F2xvcsrgFKjc408staGX0ksYZDuY2bhLJJa3JLtm6U93bLd4tls7znc1w=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hugaE-00Bq6T-Fe
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 17:15:44 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75HE8Io145577;
 Mon, 5 Aug 2019 17:15:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=nPFbMWDy/GPZ7qzfaZqz6U6+uWj0/xLsMBVQnP4Sfiw=;
 b=KBw3Y+0yGPt4x914tL/z2ZGH0gzolkKnoJNLuxRSLTsTqxj85gHV4zMqrIISLfrTa9YS
 BtjkPDvuMdSXu6EJ3VbezizS0grQE4TX1HLlq7lgkRKM3kOCdN3lPFEeA4c2rDEfdStu
 SMUksNORwHAh6PRmXdbXWRz6/BgdgDJS0/Z+E0MHt3ElLUTf62UdoAq7QPqTczoM+VFI
 m9bDcaOM6z9gxLODEJOGJraC5jIDxRojAmiRZ9eU6Q3HosCBZddAQ2UOLJWBKZMZpbrg
 CzJ6Kp68V2sdTEBmbLZCs4S2vi4iYOYNOulWc1SS1JK40Lo2nNrz3obR3JTBKtiPfb8S nA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2u527pghux-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 17:15:33 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75H1j1A177873;
 Mon, 5 Aug 2019 17:15:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2u5233d9s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 17:15:33 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x75HFV0I022474;
 Mon, 5 Aug 2019 17:15:31 GMT
Received: from anon-dhcp-153.1015granger.net (/68.61.232.219)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 05 Aug 2019 10:15:23 -0700
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Chuck Lever <chuck.lever@oracle.com>
In-Reply-To: <f181b5b6-df7c-d657-4ec6-4a4e56a9b5ff@acm.org>
Date: Mon, 5 Aug 2019 13:15:22 -0400
Message-Id: <87D288BC-65F8-4678-A8C5-DEF7C3355BC7@oracle.com>
References: <20190729171923.13428.52555.stgit@manet.1015granger.net>
 <f181b5b6-df7c-d657-4ec6-4a4e56a9b5ff@acm.org>
To: Bart Van Assche <bvanassche@acm.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908050185
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908050185
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hugaE-00Bq6T-Fe
Subject: Re: [V9fs-developer] [PATCH v3] rdma: Enable ib_alloc_cq to spread
 work over a device's comp_vectors
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
Cc: linux-rdma@vger.kernel.org, jgg@ziepe.ca,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, linux-cifs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Bart-

> On Aug 5, 2019, at 12:09 PM, Bart Van Assche <bvanassche@acm.org> wrote:
> 
> On 7/29/19 10:22 AM, Chuck Lever wrote:
>> diff --git a/drivers/infiniband/ulp/srpt/ib_srpt.c b/drivers/infiniband/ulp/srpt/ib_srpt.c
>> index 1a039f1..e25c70a 100644
>> --- a/drivers/infiniband/ulp/srpt/ib_srpt.c
>> +++ b/drivers/infiniband/ulp/srpt/ib_srpt.c
>> @@ -1767,8 +1767,8 @@ static int srpt_create_ch_ib(struct srpt_rdma_ch *ch)
>>  		goto out;
>>    retry:
>> -	ch->cq = ib_alloc_cq(sdev->device, ch, ch->rq_size + sq_size,
>> -			0 /* XXX: spread CQs */, IB_POLL_WORKQUEUE);
>> +	ch->cq = ib_alloc_cq_any(sdev->device, ch, ch->rq_size + sq_size,
>> +				 IB_POLL_WORKQUEUE);
>>  	if (IS_ERR(ch->cq)) {
>>  		ret = PTR_ERR(ch->cq);
>>  		pr_err("failed to create CQ cqe= %d ret= %d\n",
> Hi Chuck,
> 
> Please Cc me for future srp and srpt patches. I think my name appears next to both drivers in the MAINTAINERS file.

I see your name listed, but I thought the rule was to Cc: the mailing list
which is listed for that component. My bad.

--
Chuck Lever





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
