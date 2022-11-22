Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6455E633153
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 01:27:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxH8P-00042Z-3V;
	Tue, 22 Nov 2022 00:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oxH8N-00042T-Jq
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XrOQACgMrecjPO16pG0TFXbX+miDFWcwlW4S6clOamg=; b=RhBtY3SACiZ0PpVD+1vAI8J+h9
 Y3hSfkbdpj7cxjm1juciis4iu+zIRfsmaF4tTnEjvflTeTW9l1EMuilUvoKOshdMCY/xfSmoZFBHs
 rmyMRp0ithgZ5+1OdZ/RHhfqYrPUJSioz+JPvOlxuxiXWD2vnKwJx2BLGCxpPdL8LFHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XrOQACgMrecjPO16pG0TFXbX+miDFWcwlW4S6clOamg=; b=XgFIVB3jMN7/95B6waVWgyPRIf
 iXf8L63jRGDr8glkb+/6egtA1NgJ83M8xduGSoftLosO/kjYTEgO+4jsHtNP6+IW5Ta+bDVuE3Rey
 IAZr6MWiBg5HW7tYrKhY0njhRSE4vB0yJDQUDAmXvojO5V9xKSSCXdqwvEK6SHdYsJDI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxH8M-0008AO-K5 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:27:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 34E70C020; Tue, 22 Nov 2022 01:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669076851; bh=XrOQACgMrecjPO16pG0TFXbX+miDFWcwlW4S6clOamg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oxKFuMemii2R52+Y5DMfeLoIPtcLBcJdk0AZEJ55H1AM4U0/hF0yPgxuSJs/Z1uFj
 jU3gwt+4q5+f9z8ryxSOZFBDmPnJp2Vf+qet+1gNBVZWEzinltHx6qHKtY8KX51zaq
 7ofET890O1b6AtBiFSwT3S9ThAXypZgkMr64LG6/RwA2THAkZPuUSjQ0iobDS9nn3K
 PckoSoC/5Zz3sPJg3kBfdctsoV3Sp8ydEeOpPO1gQAFRUlhkPQsQbmITozrAfjmUg6
 pYCp0xKSAAPZX5ZcCHflZETv66h2gPnLcVcywg8tbQLaTn8zC0A/FxxNNJW0Ap6vBM
 u0cQp0D8jejvQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 87D35C009;
 Tue, 22 Nov 2022 01:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669076850; bh=XrOQACgMrecjPO16pG0TFXbX+miDFWcwlW4S6clOamg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O3HeiSmug+iHNoI/dhaQCza0ylMPDJDtSMhLQrVS1aOgZNsF0RjbqKfgksuKPBY5X
 UjoyCJBYXTXTYdrhvVcG7FJkdaHRTYsf2FkbBLniUFwrgEOXa16ARnx0Al6dEJ0xCY
 Ud5xl6/tjdKdUNcTVCzYYwtVanr9RHgjXRxuXQP5GNQu/AZiPHoCTK2ELr8Me+S6Df
 7oVd9Y/zzLGvC1gana7mJSh1VfRmg6vYZHLXeFO7SQyh32fOnl0n/1I1aQk2+y9eAr
 w3a1d74k3YU+NtByfGVbtvblTP8//AvL20HGNOAal+cLoMRPOH7x+nxr33ro7P0TjC
 rk7zBWD11endw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id caa503a5;
 Tue, 22 Nov 2022 00:27:17 +0000 (UTC)
Date: Tue, 22 Nov 2022 09:27:02 +0900
From: asmadeus@codewreck.org
To: Ye Bin <yebin@huaweicloud.com>
Message-ID: <Y3wXVkp4ne7JQGWQ@codewreck.org>
References: <20221121080049.3850133-1-yebin@huaweicloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221121080049.3850133-1-yebin@huaweicloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ye Bin wrote on Mon, Nov 21, 2022 at 04:00:44PM +0800: > Ye
 Bin (5): Thanks for these patches. The commit messages are a bit difficult,
 but code changes mostly look good to me -- I'll do a proper review when I
 can find time to test. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oxH8M-0008AO-K5
Subject: Re: [V9fs-developer] [PATCH 0/5] Fix error handle in
 'rdma_request()'
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
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, yebin10@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ye Bin wrote on Mon, Nov 21, 2022 at 04:00:44PM +0800:
> Ye Bin (5):

Thanks for these patches.
The commit messages are a bit difficult, but code changes mostly look
good to me -- I'll do a proper review when I can find time to test.

Just one question first: do you have RDMA hardware at huawei and/or
actually use this, or is it all static analysis fixes ?
(regardless of whether these problems actually happened with that
hardware, I'd like to know if this has had a first round of test or not)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
