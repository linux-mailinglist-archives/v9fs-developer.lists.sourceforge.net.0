Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 925572C97D2
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 08:07:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kjzlS-0006SM-Ex; Tue, 01 Dec 2020 07:07:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1kjzlQ-0006SA-Ea
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:Cc:
 To:From:Date:Message-ID:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3HisL07hMIGHTEQHbmBhCBHT9UuwvPjn8bGNEkPVAOk=; b=J87lsBpzltGJCmnJrbQbW6DQTK
 3dyljz/QH/8PE+FfeEWQDJR0R9+/v01EXwDuTe7k/TdTDbVIOfB/UAtj2EMcpy5mrq6jwjMrGPiSi
 K3G8vQNC5XX1ei+qyPgIbpqatGCK4gsKmTCuRp0W/qM/DNyz9QNCKYnLmqdRIDF73sS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Cc:To:From:Date:Message-ID
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3HisL07hMIGHTEQHbmBhCBHT9UuwvPjn8bGNEkPVAOk=; b=J
 LX9B/moUA0kdqJv2q/sboYRRslG8QnEIFphhqOzvxA/Jkijfo2XF57yyTa06bi+NDVN44YiiKsQNy
 RXFxGetABahUwXpokAqgBtexTyrDSlLe0VAgAZHrSkavVuDMbHhWwyK9gsKYU1Fr/i8bwWh8EQMk8
 6ZTBAD5rhINzdgZ4=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjzlC-008eHv-Pv
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:07:51 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B16xS3I164530;
 Tue, 1 Dec 2020 07:07:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=mime-version :
 message-id : date : from : to : cc : subject : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=3HisL07hMIGHTEQHbmBhCBHT9UuwvPjn8bGNEkPVAOk=;
 b=zBsTHaSKjhGGb1xvUJKYWnhCZPsreK78MH4hSlvphw22OixckqNVM7Qab7xpxtRWkn/s
 FBdmAJ2qoH5FSLO3nCMoo1qaVOLN0v55d6N5yJgTYeqROxaNFuniyTLUuR5v9dOwuAZk
 dZQGLtUyX6DbX+cyow+FSqpeO/tw7SQqge2sXUAuCqGRIgUJVNh95uPbNidzrQh/7hgF
 4xTpxcaxhFVBYUaoUH6z19R8+gW3HsKv/V1UXImL5crOeXzy8qvchF+LDNDOWlUPsm0M
 eYpJO8eerN4A3dw8q+6zK4nsn+l3UxfQk65bOh17H3LEZISfkv9KodWYAfYBSWedlXuC JQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 353dyqh0as-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Dec 2020 07:07:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B170TCL062782;
 Tue, 1 Dec 2020 07:05:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 35404mgwe0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Dec 2020 07:05:15 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B175EES010795;
 Tue, 1 Dec 2020 07:05:14 GMT
Received: from mwanda (/41.210.145.16) by default (Oracle Beehive Gateway
 v4.0) with ESMTP ; Mon, 30 Nov 2020 23:04:25 -0800
MIME-Version: 1.0
Message-ID: <X8Xq7JvqR/LKzjB2@mwanda>
Date: Mon, 30 Nov 2020 23:04:12 -0800 (PST)
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Jianyong Wu <jianyong.wu@arm.com>
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 phishscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010045
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 clxscore=1015 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
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
X-Headers-End: 1kjzlC-008eHv-Pv
Subject: [V9fs-developer] [PATCH 1/2] 9p: Uninitialized variable in
 v9fs_writeback_fid()
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

If v9fs_fid_lookup_with_uid() fails then "fid" is not initialized.

The v9fs_fid_lookup_with_uid() can't return NULL.  If it returns an
error pointer then we can still pass that to clone_fid() and it will
return the error pointer back again.

Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 fs/9p/fid.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 50118ec72a92..79837f1b1c91 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -302,8 +302,7 @@ struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
 	struct p9_fid *fid, *ofid;
 
 	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
-	if (ofid && !IS_ERR(ofid))
-		fid = clone_fid(ofid);
+	fid = clone_fid(ofid);
 	if (IS_ERR(fid))
 		goto error_out;
 	p9_client_clunk(ofid);
-- 
2.29.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
