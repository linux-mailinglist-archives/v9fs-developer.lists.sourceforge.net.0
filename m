Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A129A48AD
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Oct 2024 23:04:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t1u9A-00022q-Bz;
	Fri, 18 Oct 2024 21:04:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <todoparasumascota.net_ugzzub98zp@todoparasumascota.net>)
 id 1t1u99-00022k-7X for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Oct 2024 21:04:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-type:MIME-Version:From:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nzh3ZN1v7kv8NaZxaVWtuGaKe5FIhPpoGiYvPr8lSac=; b=giPHEApDxTfnmGK91djB7m0Dq8
 L5PN8w7vtbqNWqce9vScrW4ElQ25teghFAAiL1Ep/rRSbaEJw5tu60g+8fCsdfzNQA5jwyIXzE5Gr
 6kegoTqgGTb1Agxsu5n/nsxyiYd0Gay/AhfnFJ7dpq58WOwhAA/ID4m9Jedf3/I2lac4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-type:MIME-Version:From:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nzh3ZN1v7kv8NaZxaVWtuGaKe5FIhPpoGiYvPr8lSac=; b=Q
 x8EYDYit/H5+IAeGPJ9AdPceNjKkwcdRgSprbHkT0Oz9UAfmV2wTrGpZ/+I0F9mrcSW4y25/6eyrh
 bcsywWxnSgpjtY3Abnl+ZMNXHftjTLNINWAB3RJx70c5NL5R2ggpyJ6GYHMNzdVOcMcsgQa/W5rBK
 k1RMd+WuxmJL/CBM=;
Received: from consumers-01-temp.sysprovider.com ([54.38.112.29]
 helo=ns3072511.ip-54-38-112.eu)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t1u97-0002Ch-A2 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Oct 2024 21:04:30 +0000
Received: by ns3072511.ip-54-38-112.eu (Postfix, from userid 10009)
 id 5EF666CD3FD1A; Fri, 18 Oct 2024 20:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=todoparasumascota.net; s=default; t=1729284516;
 bh=nzh3ZN1v7kv8NaZxaVWtuGaKe5FIhPpoGiYvPr8lSac=; h=To:Subject:From;
 b=uzyAzRubX9hSsomrjlPRTAn5VRxttJP6/pmCoZg3FFfhmh4ZtVup3jOZCSUwDGt9L
 qgkxDgtmVs6aoE2A3kmSc1Y3WfyChXiPyflNH5id91OlcKeI4qrtqk1XQf02YjVsMA
 NGcLVLtrU7upZGz4VpQ0gVFWbFxsfw1o8Zz/P7U8NenbA6LGt+7rFvfcpXhMYN3CEc
 FCFdIRvNzwxW3XyTt/o0ldyiR+T9CS50iAI/2kyFC2vTspIIikB2HFy4YYyDG65N8N
 3Fz+uR++CxqtsqEln3AhfuNutFdm6C3UJ0icakK3+x3MdC5Ex7fLb1yfR8nOkzGoaZ
 +S1nil02ExaOA==
To: v9fs-developer@lists.sourceforge.net
From: =?UTF-8?B?8J+SjiBMaWRvIExpcXVpZCBTdGFraW5nIPCfko4=?=
 <todoparasumascota.net_ugzzub98zp@todoparasumascota.net>
MIME-Version: 1.0;
Message-Id: <20241018204836.5EF666CD3FD1A@ns3072511.ip-54-38-112.eu>
Date: Fri, 18 Oct 2024 20:48:36 +0000 (UTC)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: stETH Airdrop Rewards Portal You've been selected for a
 special
 reward worth up to 100 ETH! This is your chance to enhance your crypto
 portfolio
 with an exclusive stETH airdrop from the Lido Staking. 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image
 area 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 BOGUS_MIME_VERSION     Mime version header is bogus
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1t1u97-0002Ch-A2
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?8J+agCBbTGFzdCBDaGFuY2VdOiDwn5SlIENs?=
 =?utf-8?q?aim_Your_Exclusive_stETH_Airdrop_=F0=9F=8E=81_=23N571158385375?=
 =?utf-8?b?LmRvYyAxOC4xMC4yMDI0IDIzOjQ4IChVVEMpIOKPsA==?=
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


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
