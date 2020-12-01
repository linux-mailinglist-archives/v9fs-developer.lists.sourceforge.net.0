Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BCA2C97CF
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 08:07:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kjzkp-0001tR-29; Tue, 01 Dec 2020 07:07:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1kjzkn-0001t6-QX
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wJUVjSwX0WKa308YFxrbEDoQPJuwuAbJnmH3mVM4apI=; b=gUNKwAGQhwxRaLxToKBpQYPHdv
 niI9K9qYiFw6s9VY4WvUgv1XrlwfdP8NnrRlF/dcFXCv1ZUapXPDDh817U6sy7YqY5g5ojNfpEDd7
 tF+S6yPZ6wXXaO86afkN3zis6tJf5xQDk7ve191NyFk4xaUVAH35ZwFtU+k9UH78HyFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wJUVjSwX0WKa308YFxrbEDoQPJuwuAbJnmH3mVM4apI=; b=Q
 daAzApzu7ZQp8jlC9AWjTSFmH1JGLEQZKysOPsLHu8qggzVASFwskSUToPJuWgqJ2iPfDpAm+8rCN
 aWl84FnERMXGg6BMMY3KYG5icEo3sbzNpIkbIhB5SYwEACzVtn+/+Gj2skP5MBPPHMCTF7QpEpZdN
 vxAZgAjnims9J95Y=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjzkj-00DZSC-K1
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:07:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B16xEPm164026;
 Tue, 1 Dec 2020 07:06:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=wJUVjSwX0WKa308YFxrbEDoQPJuwuAbJnmH3mVM4apI=;
 b=PtQmyN22BXD1QKufzcGY4MfNVETuuxnsxHsqhHH4eL5iBojKMw26wRwORQI3LYRpZLXA
 JVyyGcYeh6WQ9+C19XD/4HDYOh8cxD1xNVILSTZN+8Z1NCWrlLa3BO+KI19Zaw3gvn5N
 uK9IlOQMFFpe8tsDDHxJilsUdmexogTilTE73+ZgO88iS+apELsDv3WNAEb+VYdFp3if
 /YskJ8jGip7ndZG17qLc4nucb2XblTCOIuSwGpEYkNY+8yG40J7Qm+i9KDZIo2YROBfu
 q6WOyjGaUzcvLFA/RoiOtcUT/7NCIGymNFVyjNLB7svtiqU3Ib2toMPPw3OrV6b6B9lm yA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 353dyqh093-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Dec 2020 07:06:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B171Ipb178074;
 Tue, 1 Dec 2020 07:04:51 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 3540fwfm3a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Dec 2020 07:04:51 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B174ki8010592;
 Tue, 1 Dec 2020 07:04:46 GMT
Received: from mwanda (/41.210.145.16) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 30 Nov 2020 23:04:45 -0800
Date: Tue, 1 Dec 2020 10:04:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <X8XrAreZVDdLX+QH@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010045
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 clxscore=1011 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010045
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kjzkj-00DZSC-K1
Subject: [V9fs-developer] [PATCH 2/2] 9p: Remove unnecessary IS_ERR() check
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, v9fs-developer@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The "fid" variable can't be an error pointer so there is no need to
check.  The code is slightly cleaner if we move the increment before
the break and remove the NULL check as well.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 fs/9p/fid.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 79837f1b1c91..9d9de62592be 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -56,12 +56,11 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
 	h = (struct hlist_head *)&inode->i_private;
 	hlist_for_each_entry(fid, h, ilist) {
 		if (uid_eq(fid->uid, uid)) {
+			refcount_inc(&fid->count);
 			ret = fid;
 			break;
 		}
 	}
-	if (ret && !IS_ERR(ret))
-		refcount_inc(&ret->count);
 	spin_unlock(&inode->i_lock);
 	return ret;
 }
-- 
2.29.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
