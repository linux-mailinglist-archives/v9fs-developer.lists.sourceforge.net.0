Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3146408E1
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 Dec 2022 16:00:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p17WU-00024N-VW;
	Fri, 02 Dec 2022 15:00:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p17WT-000249-Nu
 for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Dec 2022 15:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eFVoZAfD9YPOPHkY+vtVQeAztonhM8KEg/TJuZEwtyk=; b=Fid/8jGk0IC5zQIut84dJk2/07
 CfehSR9bm6FvePfZltWMTFio3sEHqcIysa3YwYpvQHwAf81bSsXaBqIcj8Ue5Ky+gaNmvkrMDfmUq
 XyR4btLkX63iUhsFIxQGbhhBUercQBYKUIC9p3KuZnntG63NcFy8zYqe+2Jh45d6Fvp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eFVoZAfD9YPOPHkY+vtVQeAztonhM8KEg/TJuZEwtyk=; b=Du90aiMGJNTrMM8pXOd2n2YGkR
 l4RV2D1uFgkSKzg4KkdLZ3gJTF4lGD2i/Si7Ulx1Tp1XOYrMrZzceJt9RJVbM1CmVOkIS7ahF/hfB
 wm/7uxIBuvTdUcpmQSiSDo7yMvKYpllhB5yR3CDSnVC+zrPyYa66TgfGHzwGbL/M4fbU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p17WR-004Ekv-KL for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Dec 2022 15:00:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E8E62C020; Fri,  2 Dec 2022 16:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669993216; bh=eFVoZAfD9YPOPHkY+vtVQeAztonhM8KEg/TJuZEwtyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRYxCC+feO+qQnoPKijZmbBfFAQa7Q7NTkHW2QfbIB/shlM0vI2PWs9elzx1U7gkf
 9tc/e3ak1TTY7DIoLiYE7Jnc7Zrpjxj7UQukuff4TLF0bQ+e+H7ooaOitZk8ONb6bT
 RQ8/SzyRepBFQIT90+RxlxDq3w7ZZS6HBf+l8v35TKp8BJYRZlps89P1kfc13rCxxE
 f+zb9ku7FdPnZfdY1EfLwmUgDZWCtDbSlM/rd+Xic83LsBBVQPBCEQIROlGt6N+zgq
 XTydyZmIfOqpXywhXFFS9bXZo9Wj3vN0WFtn8BpvG++ARmlnWjorZq7ENXm5hxBzFN
 CSbZGSFLAnY+A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 99EDDC009;
 Fri,  2 Dec 2022 16:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669993216; bh=eFVoZAfD9YPOPHkY+vtVQeAztonhM8KEg/TJuZEwtyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRYxCC+feO+qQnoPKijZmbBfFAQa7Q7NTkHW2QfbIB/shlM0vI2PWs9elzx1U7gkf
 9tc/e3ak1TTY7DIoLiYE7Jnc7Zrpjxj7UQukuff4TLF0bQ+e+H7ooaOitZk8ONb6bT
 RQ8/SzyRepBFQIT90+RxlxDq3w7ZZS6HBf+l8v35TKp8BJYRZlps89P1kfc13rCxxE
 f+zb9ku7FdPnZfdY1EfLwmUgDZWCtDbSlM/rd+Xic83LsBBVQPBCEQIROlGt6N+zgq
 XTydyZmIfOqpXywhXFFS9bXZo9Wj3vN0WFtn8BpvG++ARmlnWjorZq7ENXm5hxBzFN
 CSbZGSFLAnY+A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 831197e9;
 Fri, 2 Dec 2022 15:00:01 +0000 (UTC)
Date: Fri, 2 Dec 2022 23:59:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <Y4oS4rMkjil1H11K@codewreck.org>
References: <9e386018601d7e4a9e5d7da8fc3e9555ebb25c87.1669560387.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e386018601d7e4a9e5d7da8fc3e9555ebb25c87.1669560387.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christophe JAILLET wrote on Sun, Nov 27, 2022 at 03:46:45PM
 +0100: > The 9p net files don't use IDR or IDA functionalities. So there
 is no point > in including <linux/idr.h>. > Remove it. > > Signed-o [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p17WR-004Ekv-KL
Subject: Re: [V9fs-developer] [PATCH] 9p: Remove unneeded idr.h #include in
 the net/9p directory
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christophe JAILLET wrote on Sun, Nov 27, 2022 at 03:46:45PM +0100:
> The 9p net files don't use IDR or IDA functionalities. So there is no point
> in including <linux/idr.h>.
> Remove it.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Thanks, picked this one up as well

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
