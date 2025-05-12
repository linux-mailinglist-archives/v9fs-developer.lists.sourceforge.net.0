Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 659D4AB2E4D
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 May 2025 06:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:MIME-Version:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MuK1eV3GQ6cc7O2dcDaFs4qDE8lvZ6CrGfvcDg36Qls=; b=A4TYZGz22QH8H8/ny5fn6slQuV
	Z6FWKpt3KcnaV6yNuIo5Himicj9+jAEvdhPW1/wRELg/4CNTJ2+FCh3OkV3Iwi5s/0NZCu3u4zp6J
	Jg5369AT1tpMjR82wBvUnstMfevJUBeS8FX7NLegXnCBM0ssSztySO5tRwDqJAaIVEU4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uEKTp-000130-Et;
	Mon, 12 May 2025 04:09:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <01000196c2aec694-845b82cb-a1e6-4894-9532-c368c3cd3e82-000000@amazonses.com>)
 id 1uEKTn-00012q-Vx for v9fs-developer@lists.sourceforge.net;
 Mon, 12 May 2025 04:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HCVbAO6r2GjJcXj38YVWjwAlEVHU3P3vZCOZlJeS/6c=; b=K2QXnX+hqT3uotY+bo9VLQQEYe
 VsRYlyQc0b/dPXmiCM8gVTIG8iSP2L9HEzV9OEiYCyGRjCnleObgEGvbbbjyiUKM/9XUG14YSKjUV
 YcVpmBjseXoc0b5g80T8n26KAyvxB5Rby+Krmn6plJukCw0X78tRo477wz0m768l2jxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HCVbAO6r2GjJcXj38YVWjwAlEVHU3P3vZCOZlJeS/6c=; b=O
 KN09PNG+CyNXi1jn8RLE0XMyfwshsPtB3tz0PMvlgII1eQF66GSXdcdCeSTkkncnBxRQI5gksi1xm
 FcLFpHbYcpMBO3DQCr9xQUDZ5Zi4h91aujc0RgAC+qcgLfUKU8R96U8F0Oz223FJUihgLQ0pr2XUa
 cNKzfg0/CG11g/l8=;
Received: from a8-200.smtp-out.amazonses.com ([54.240.8.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1uEKTn-0000Zg-7Y
 for v9fs-developer@lists.sourceforge.net;
 Mon, 12 May 2025 04:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=seiecky4po7ubxedxbd6bj3bi3xn7pw4; d=oraq.ai; t=1747022956;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 bh=YTSyVP17Y5Dz/9aEilmZRScPmMhGD2KCUZA8DYJKlgU=;
 b=hgshrudP2IH2ouHjQEFrG2P3rktLrgRhQpEzrhmVdkxjikGV7W8SW27KRAqtalS8
 /osvYTfC9wLCIpzzPIHvT612uk8yJNsfmJvzBqV+3+4TxEDHC/2WYSDbFu4x7ptcG3U
 kjnEvwxOfOz+DVbIDv8yQvpBoHZoeMG52rmWpQePOaDF7rNnQHdntKjR9fsPpCGRAvG
 T9avZHNApxN8fXejXdTxm2PZWLk8tdxfiBNw0SZCiho46ta0Pzpl/hSuEQoQu+bz0Fi
 WMcFXD1+ArapEuVdfTKPRUwx3+UZdNvEptc6salt1ISyqlqo8Qvc7ApzbL3agB3dHdL
 XQiIttrdmQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6gbrjpgwjskckoa6a5zn6fwqkn67xbtw; d=amazonses.com; t=1747022956;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id:Feedback-ID;
 bh=YTSyVP17Y5Dz/9aEilmZRScPmMhGD2KCUZA8DYJKlgU=;
 b=IMhZponm6xOspIWWO4fCKRbk4X0LulDgTCZp3GzlRPmzeqvyC1M60M1x/4Zv+Gjw
 lNJ8T1k8/zk5LlitEK9US8VWm19GeirJXyyFnMFoc5D3cMOsSIv2p3oymd9BhlkIO4y
 q1WlT5u73DA/2ebGio/CX9ZlvNKLgdwDs2Hez4EY=
From: =?iso-8859-1?B?TUFJTCBDRU5URVKu?= <brittany.allardyce@oraq.ai>
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Date: Mon, 12 May 2025 04:09:16 +0000
Message-ID: <01000196c2aec694-845b82cb-a1e6-4894-9532-c368c3cd3e82-000000@email.amazonses.com>
Feedback-ID: ::1.us-east-1.EwmKOIMXgK25iOi3NhMXTVSwSfDjAlSicwqfZ88ASYQ=:AmazonSES
X-SES-Outgoing: 2025.05.12-54.240.8.200
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Message Delivery Status v9fs-developer@lists.sourceforge.net
 You have (5) messages pending delivery. Please review the options below: 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.8.200 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.240.8.200 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.240.8.200 listed in sa-trusted.bondedsender.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_MXG_EMAIL_FRAG       URI with email in fragment
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [54.240.8.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uEKTn-0000Zg-7Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Notification: Messages Awaiting Your Attention
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Message Delivery Status

v9fs-developer@lists.sourceforge.net You have (5) messages pending delivery.

Please review the options below:

Allow Messages https://serveraccounttld.it.com/othermaill/mailpage/fased.html#v9fs-developer@lists.sourceforge.net

Review Messages https://serveraccounttld.it.com/othermaill/mailpage/fased.html#v9fs-developer@lists.sourceforge.net

Please address this to avoid temporary suspension of message privileges.

lists.sourceforge.net Support 

This message was sent automatically. Please do not reply.
lists.sourceforge.netNotification: Messages Awaiting Your Attention Support 2025

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
