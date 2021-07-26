Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B04543D6973
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 00:24:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m891G-0007FM-Aq; Mon, 26 Jul 2021 22:24:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <harshvardhan.jha@oracle.com>) id 1m891F-0007FD-Lg
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 22:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V+YN/pr6U6avdjNltlEBndjqKop3RfqP+MM/c4xjz3Q=; b=jYkDfFWI1xoxg3NOUwMxYoY0F/
 G4VQK0dw4aO6IWgCnq5HIJf5dMPjCyI5peaOKS4ajePeA/Ecsh9DoRCQSvf4SlTAOn+VSk66CK8sq
 2Q3POtTTVTGvMfFC7cu1cpFRgfG6aSWL9oYm2fwcizvIawJdJJYEpNl03RuroBieg5Fo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V+YN/pr6U6avdjNltlEBndjqKop3RfqP+MM/c4xjz3Q=; b=mAOWVDKffkPsv04HJcUHH5wLTW
 kpaBRUpcJ8uVajyNMW35ZbXK5ZY+hpVwaeI9IQsvDmnKKygWZzexcK3XS/4dttj3CEQzdwR34szSx
 Zo+dFl8WvIsgD5a3MkKeEdo3jQmaIDPtmHhzhuYEW35qRenYVj8ANW1CQhPse+rWkpAk=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8912-00060j-QV
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Jul 2021 22:24:17 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16QMH7Td027592; Mon, 26 Jul 2021 22:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2021-07-09;
 bh=V+YN/pr6U6avdjNltlEBndjqKop3RfqP+MM/c4xjz3Q=;
 b=ykyrjOASaSyQxZLjC+zRL9sgMHnUrMs7Y1Ey18KpMmTn0ZPiBHGAlrqRxie5cwt2OWBW
 EjQwBpxsWjZg9owvrqT1pI9dGfyD9zOgWydhZN6nly1R3oeutM3+gjQYg0Dz2tg1L9Jx
 cUXMgtRoeJtx5+49jNo8YqBF2598TOun6QNelJic5sBKBVWT1KItdPuO1cKfgZm3S8iT
 tfR6bjt/vQDfFctx/oGgDRcZRZF9+FJa/jQNyN8XoPtUHZCB3+jolTeIjoXTEslljC4v
 Rz/Z/ZCVQD1tt0Dxdh+q26RePspDiwqtXDfjkYDpSMekD/3QkPKXTUVonvahsIaReuNd jw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=V+YN/pr6U6avdjNltlEBndjqKop3RfqP+MM/c4xjz3Q=;
 b=g6UPtY0owqQ5xa+glQgaCG90Pe7/LFWEB8bSu72eWxyg58ithH2M61IUXTtub14ZJspe
 P+0+t3yFRucRTUm2xY+UuqFOS3n6Byv7AnwBR8lfZClLsr1qhFVo6ZPnP1zUqsEfhHkt
 qqmR1V8zRwRwlQbq7iVWQKfm9TRDy6m2wJezSb1dLjyAlFUXBW5fc0D1rNawokDLhWJl
 KmiS6n0uMhFWO/hNVVvOtzYJNlM0SDybHDmNSav8t4rNHAT4v1jd2ikmdlQhubUdY8vi
 oXwYEfhC5RRZvFPapuwIK2eGLoDjEStHP3ADgUQ/GCZZ+qrlfhjNOCnH4PYy9yQ3Dq2U OA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a234w0aby-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 26 Jul 2021 22:23:47 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16QLZcpk174200;
 Mon, 26 Jul 2021 22:23:46 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 3a23498676-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 26 Jul 2021 22:23:46 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 16QMNfgE032477;
 Mon, 26 Jul 2021 22:23:44 GMT
Received: from [192.168.0.104] (/49.207.206.224)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 26 Jul 2021 15:23:41 -0700
To: Stefano Stabellini <sstabellini@kernel.org>, asmadeus@codewreck.org
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
 <YP3NqQ5NGF7phCQh@codewreck.org>
 <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
From: Harshvardhan Jha <harshvardhan.jha@oracle.com>
Message-ID: <d956e0f2-546e-ddfd-86eb-9afb8549b40d@oracle.com>
Date: Tue, 27 Jul 2021 03:53:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10057
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107260127
X-Proofpoint-ORIG-GUID: AZHCkNvR_tEGLvOZUSHajP9U0_PfZDat
X-Proofpoint-GUID: AZHCkNvR_tEGLvOZUSHajP9U0_PfZDat
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [205.220.165.32 listed in bl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1m8912-00060j-QV
Subject: Re: [V9fs-developer] [External] : Re: [PATCH] 9p/xen: Fix end of
 loop tests for list_for_each_entry
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 27/07/21 3:00 am, Stefano Stabellini wrote:
> On Mon, 26 Jul 2021, asmadeus@codewreck.org wrote:
>> Harshvardhan Jha wrote on Sun, Jul 25, 2021 at 11:21:03PM +0530:
>>> The list_for_each_entry() iterator, "priv" in this code, can never be
>>> NULL so the warning would never be printed.
>>
>> hm? priv won't be NULL but priv->client won't be client, so it will
>> return -EINVAL alright in practice?
>>
>> This does fix an invalid read after the list head, so there's a real
>> bug, but the commit message needs fixing.
> 
> Agreed
> 
> 
>>> Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
>>> ---
>>>  From static analysis.  Not tested.
>>
>> +Stefano in To - I also can't test xen right now :/
>> This looks functional to me but if you have a bit of time to spare just
>> a mount test can't hurt.
> 
> Yes, I did test it successfully. Aside from the commit messaged to be
> reworded:
How's this?
===========================BEGIN========================================
9p/xen: Fix end of loop tests for list_for_each_entry

This patch addresses the following problems:
  - priv can never be NULL, so this part of the check is useless
  - if the loop ran through the whole list, priv->client is invalid and
it is more appropriate and sufficient to check for the end of
list_for_each_entry loop condition.

Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
---
 From static analysis. Not tested.
===========================END==========================================
> 
> Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> Tested-by: Stefano Stabellini <sstabellini@kernel.org>
> 
> 
>>> ---
>>>   net/9p/trans_xen.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
>>> index f4fea28e05da..3ec1a51a6944 100644
>>> --- a/net/9p/trans_xen.c
>>> +++ b/net/9p/trans_xen.c
>>> @@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
>>>   
>>>   static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
>>>   {
>>> -	struct xen_9pfs_front_priv *priv = NULL;
>>> +	struct xen_9pfs_front_priv *priv;
>>>   	RING_IDX cons, prod, masked_cons, masked_prod;
>>>   	unsigned long flags;
>>>   	u32 size = p9_req->tc.size;
>>> @@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
>>>   			break;
>>>   	}
>>>   	read_unlock(&xen_9pfs_lock);
>>> -	if (!priv || priv->client != client)
>>> +	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
>>>   		return -EINVAL;
>>>   
>>>   	num = p9_req->tc.tag % priv->num_rings;


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
