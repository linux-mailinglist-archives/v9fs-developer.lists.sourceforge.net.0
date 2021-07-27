Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C15B3D6AE9
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Jul 2021 02:15:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m8Aku-0003WV-RG; Tue, 27 Jul 2021 00:15:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <harshvardhan.jha@oracle.com>) id 1m8Ac7-0002H3-G4
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bsmhKNCh74dd0jh/AeoLSfM0YVz66eHJHAkqLKDrD84=; b=UYGg6ceuV+9wZzLDPCcc51j89L
 X4OHhjkhQPNAXq/v8xIE3IypFyia8th13gt2czANBNuvas0hJ9luZOoCSR+cBpF6nxELqUMg0D7zw
 ypFtJReEEDFlAwOJXVmvefrK6GTJ80v3RqzZX6Qk+p9xPwxE3lKcz89+o7qQE1plxrPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bsmhKNCh74dd0jh/AeoLSfM0YVz66eHJHAkqLKDrD84=; b=TKDTquQ2+GC0Rk5CpSkYTAD/Ej
 2uHMUnrL5wEAm5gh6/HsMUzsk0jtpziW6ahrQAh/Znx1RScH6dKKGyFVivCHvsKjxEKjjzBlIREP+
 v32rr2HISQe4a3agkZG5abm7cnzGbiK/EbcO/aegYaM9s+6j1UQk5R9jOH7MC/n/mXpg=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8AXP-003c15-Q2
 for v9fs-developer@lists.sourceforge.net; Tue, 27 Jul 2021 00:01:46 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16QNvi4m005216; Tue, 27 Jul 2021 00:01:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2021-07-09;
 bh=bsmhKNCh74dd0jh/AeoLSfM0YVz66eHJHAkqLKDrD84=;
 b=jBfCeJJlGtbku146rCvjrGG/suI3c58BHeRRV/ericynMq8i++dUwmgKM6OTaNG9vzis
 TLtkFTFhG8MbpEvMGHQ978D6le4O1b4dW8cssIgJ5A5vokyP4tyE06VWZ565QBqJv3rd
 mIjg19mCS2gbwswdGQadh450ZfEIZ+NGx1dNe4ruUlWFrj8y/iY7ep+am+lqDzsJ+TWS
 T+NAWYgtW6DkEKQV3EykPPkVT7UdLF9F7lYhcvv5o7dCibEpU8uaXpWpu0IKKMJvFE5v
 I9I68o+rW/ukINLi6pz35Hc2L5InOBF1xk/p4M5ZNhD77p/lJfoNz3TWhIfxPNwJIziT qg== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=bsmhKNCh74dd0jh/AeoLSfM0YVz66eHJHAkqLKDrD84=;
 b=ZHj7YwW+ZZMlTsMbExIvaNnid4UUXAFxdFJfs0v2r29K/nZvIo0uOsr2/Fc5q2cN2UA1
 wh+acTYjwokT6NMD4tQ9pKy+E+cGBaX004CzDpoOCNaG7lsLYRIuETD5ACrXWuIsOywS
 Q4kIyCuz9j09hNco/vLRZd+G23POJZjC14pSSh2VJon9Appfxxs5NudWabVNAHraSpIi
 MX9MJD1JGEW2lLfiW0I8QfTtxjyljQXkuOA61uBVJt/Hbg/iW5r62YXKWggP29rbaj0s
 xU3MyQrDOuop1DvhO5OnAV/7YdwjvMlAXjBGid8WZOD8r9Djg8bbt5QJGI5tEm57eljN rQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3a2356gdnv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 00:01:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16QLanCD022899;
 Tue, 27 Jul 2021 00:01:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3a2351v0u5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Jul 2021 00:01:18 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.14.4) with ESMTP id 16R01GoL005404;
 Tue, 27 Jul 2021 00:01:16 GMT
Received: from [192.168.0.104] (/49.207.206.224)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 26 Jul 2021 17:01:16 -0700
To: asmadeus@codewreck.org, Stefano Stabellini <sstabellini@kernel.org>
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
 <YP3NqQ5NGF7phCQh@codewreck.org>
 <alpine.DEB.2.21.2107261357210.10122@sstabellini-ThinkPad-T480s>
 <d956e0f2-546e-ddfd-86eb-9afb8549b40d@oracle.com>
 <alpine.DEB.2.21.2107261654130.10122@sstabellini-ThinkPad-T480s>
 <YP9MeeqOKcyYRxjK@codewreck.org>
From: Harshvardhan Jha <harshvardhan.jha@oracle.com>
Message-ID: <e635a380-0954-2de3-838a-0e353f756b87@oracle.com>
Date: Tue, 27 Jul 2021 05:31:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YP9MeeqOKcyYRxjK@codewreck.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10057
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 suspectscore=0 phishscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107260127
X-Proofpoint-ORIG-GUID: 5XAwKEU5GJBgiLuVWttHggUT-JsZLAnW
X-Proofpoint-GUID: 5XAwKEU5GJBgiLuVWttHggUT-JsZLAnW
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
X-Headers-End: 1m8AXP-003c15-Q2
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



On 27/07/21 5:29 am, asmadeus@codewreck.org wrote:
> Stefano Stabellini wrote on Mon, Jul 26, 2021 at 04:54:29PM -0700:
>>>> Yes, I did test it successfully. Aside from the commit messaged to be
>>>> reworded:
>>> How's this?
>>> ===========================BEGIN========================================
>>> 9p/xen: Fix end of loop tests for list_for_each_entry
>>>
>>> This patch addresses the following problems:
>>>   - priv can never be NULL, so this part of the check is useless
>>>   - if the loop ran through the whole list, priv->client is invalid and
>>> it is more appropriate and sufficient to check for the end of
>>> list_for_each_entry loop condition.
>>>
>>> Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
> 
> Will take the patch with this text as commit message later tonight
If you want I can resend the patch with this commit message
> 
> 
>>>> Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
>>>> Tested-by: Stefano Stabellini <sstabellini@kernel.org>
> 
> Thanks for the test!
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
