Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE77650586
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 00:22:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p72zZ-0002c3-Ta;
	Sun, 18 Dec 2022 23:22:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p72zY-0002bx-Nr
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JmrAaG8n6wlsJeq35GHNyFYu48X5e3mJuVGT5tcjLUU=; b=k/L3XpbED01rGVniapcLtuTjSK
 85vqKA797hPrOmoE/56vf8+3KtDbJXfXcmHod+9yVSzPr69J+4jHCrRi3T5N3ucib4errsD2cns+6
 unyrGBAneL60WklPrsEDhF09WHxfZeUO3tFmbX0FewDH1XyzThV720oA/+Ttl1mHZMPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JmrAaG8n6wlsJeq35GHNyFYu48X5e3mJuVGT5tcjLUU=; b=kPWELV9cIgBApc4PW/JJz+8C4P
 WerFv2b9q2cbOntQrv+6VtGR5CcxFTzzZGxBSS8lw6yNxbWGMZ7wT1vGiVjli2TafF6xnXCFdSznZ
 sNFWvFXOC2RikcC38Z7rqSZQy0/sucQgXL4Ly12ivG82p0+Om4D2VdgShc4EVRTmlmh8=;
Received: from ms11p00im-qufo17281301.me.com ([17.58.38.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p72zY-0003GW-3u for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671405758;
 bh=JmrAaG8n6wlsJeq35GHNyFYu48X5e3mJuVGT5tcjLUU=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=UTlhkqKyTc1y1312R52C3sNENOuaqc0VX3x2dr/4+oqkfDXtGB243pjhxO5hMhYV0
 NLqMuYK5WK7Sh/w2sx8C4JlfLRalyrhqCOflS4Qbne+oCq6RIETEfhtJk2zlRKuSYZ
 E2yAlIiDIZ14SJkjEwQ8hvokwpXM5L1Ci1qOSTmq1OQbcdSxsENFtzZsPxWQa/0Y8B
 nSmE1kHpBAytkJWC/1hX2REWjj+P0tczNwLY+J9/zF8p3RgLill9bz9d53PG/ZXvtQ
 OsZrwA5/tXO7gIyQA4v1fFXUgvOipHkodoYz0GWa2Ir+rGfPhw1M43UQYhvW4j7+GP
 HHaU8Ja6ltXCQ==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17281301.me.com (Postfix) with ESMTPSA id A5DC5CC03C2;
 Sun, 18 Dec 2022 23:22:37 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sun, 18 Dec 2022 23:22:07 +0000
Message-Id: <20221218232217.1713283-1-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221217183142.1425132-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: M_YhFlaQCGW3-w-aAqmMT-TC2sbluUfm
X-Proofpoint-GUID: M_YhFlaQCGW3-w-aAqmMT-TC2sbluUfm
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=975 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180222
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is the second version of a patch series which adds a
 number of features to improve read/write performance in the 9p filesystem.
 Mostly it focuses on fixing caching to help utilize the recently in [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.50 listed in wl.mailspike.net]
X-Headers-End: 1p72zY-0003GW-3u
Subject: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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

This is the second version of a patch series which adds a number
of features to improve read/write performance in the 9p filesystem.
Mostly it focuses on fixing caching to help utilize the recently
increased MSIZE limits and also fixes some problematic behavior
within the writeback code.

Altogether, these show roughly 10x speed increases on simple
file transfers.  Future patch sets will improve cache consistency
and directory caching.

These patches are also available on github:
https://github.com/v9fs/linux/tree/ericvh/9p-next

Tested against qemu, cpu, and diod with fsx, dbench, and some
simple benchmarks.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
