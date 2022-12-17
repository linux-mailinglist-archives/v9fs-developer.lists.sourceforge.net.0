Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A81C64FBA7
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 19:52:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6cIn-0007cC-Ac;
	Sat, 17 Dec 2022 18:52:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6cIm-0007c6-PT
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cQvKWX9oxZ8qf4HKTzFAJpzwOKnJig3zefwHcLSTHTo=; b=GRK36IMGCJ1JxnZWu00xGugqBd
 c0i0hYjpqdE3nZgc/S5+wUFPWV3GDh1mPLK6S1ZhDqtsMbZkXkn4I40jtr7AHE5uifC2UcbJwkmAQ
 lwb5P1VWMoed53/P0qfVXA1ZtgQ5IutdDSN2rimUFdzr99a4dl35/8/SwPkTFfevwXcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cQvKWX9oxZ8qf4HKTzFAJpzwOKnJig3zefwHcLSTHTo=; b=A
 Lhdvm/q8dUwl4AE9H1I/uREZRdpiY1He1/jgO1Eurt2CslQItvKzLLu7pgkrm5KvfjF0UgOYpLr4b
 6Tema7d+ZgoANIHwYslWWu0H3vP+3c5UWkXnGwVJgpRjixnbqgJNKObVMvkmMU6dT2FEoOrpDd/zp
 mQZrEB4nT7wH6N/A=;
Received: from ms11p00im-qufo17291601.me.com ([17.58.38.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6cIi-0005fg-W3 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671303163;
 bh=cQvKWX9oxZ8qf4HKTzFAJpzwOKnJig3zefwHcLSTHTo=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=cpqpUkL5+Nrd7bTaRYhHCYRnPHrGByhDcGgVfwqSdUJ6UBp7ziBdODf+y1gx6elYH
 fSJKRskBSQtAOnk+a2dhKRfwzxc8aE799KMF3f9BRZJBbHDB5a5tY9ZT0OJIoMtg0P
 jUquAFMO7yXEK7HTEYVCQJQBRiuLKTnsoQEUcuKQLqGz9u7HCbQ2aVasHDqKEcWGjl
 H74s/7MEq2xSjES8h7t5uQ2prJPXAWdYXzGnZ1yX74dwejugvSfPuBRvs3EyRzNrSj
 Plu7pof4mO0gXOavSTQsXiht6LB47lkZjMBdT6ZUyFRetXTFnvvR+vcg2CrbPkXYLP
 j8mZ6A4Y51EjQ==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291601.me.com (Postfix) with ESMTPSA id B9AAF3A050B;
 Sat, 17 Dec 2022 18:52:38 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 17 Dec 2022 18:52:04 +0000
Message-Id: <20221217185210.1431478-1-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Proofpoint-GUID: M3HM9CylG59iES4mWdLXbl-B15ehdZXk
X-Proofpoint-ORIG-GUID: M3HM9CylG59iES4mWdLXbl-B15ehdZXk
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 adultscore=0
 mlxlogscore=677 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170174
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch series adds a number of features to improve
 read/write
 performance in the 9p filesystem. Mostly it is focused on fixing readahead
 caching to help utilize the recently increased MSIZE limits [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.45 listed in list.dnswl.org]
X-Headers-End: 1p6cIi-0005fg-W3
Subject: [V9fs-developer] [PATCH] Improve 9p performance for read operations
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
From: Eric Van Hensbergen via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This patch series adds a number of features to improve read/write 
performance in the 9p filesystem.  Mostly it is focused on fixing
readahead caching to help utilize the recently increased MSIZE
limits, but there are also some fixes for writeback caches in the
presence of readahead and/or mmap operations.

Altogether, these show roughly 10x speed increases on simple
file transfer.  Future patch sets will improve writeback cache
behavior and directory caching.

These patches are also available on github:
https://github.com/v9fs/linux/tree/ericvh/9p-next-121722

Tested against qemu, cpu, and diod with fsx, dbench, and
some simple benchmarks.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
