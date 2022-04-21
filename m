Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED621509EA7
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Apr 2022 13:36:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nhV76-00037u-8i; Thu, 21 Apr 2022 11:36:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nhV73-00037Z-PB
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Apr 2022 11:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FNNPCGuZp8Lz0rHUTjC37djeMue7sNKJl573jlzo1k8=; b=j7dzXIuAbwp7IfnLfERrHYw3r1
 psU2agqXBG72HbQdSxS7nXMTbUgmzCdW9RtjjLmaOred7Cy+Lr3HjmbA8ZY2ADR+n0jgU8c2DamHf
 eGpk0c6BCCk+ru1KqG5pH6jkLM/R5egAgvOo7HC5Iw2O/Kzl6vtVAupuBQnWPlMZ/AsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FNNPCGuZp8Lz0rHUTjC37djeMue7sNKJl573jlzo1k8=; b=A0x7BOgu0uSfYLmsYd3jTEWplz
 Z2lh3wI63L1NgYBIw9P/+L/p+qaVdF8y9CTgajgaUtCrg+IgEfBzkCFDmhZzeEKKti+BIs5nNBVsn
 HZwF/P8b4GGEkLW77ERbIKVn/6svpIyPlWiUf3evrXyjWZi9DVbORRB/DlE9TQmR2Xy0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhV70-0002nE-NN
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Apr 2022 11:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=FNNPCGuZp8Lz0rHUTjC37djeMue7sNKJl573jlzo1k8=; b=G8jJqvIHUlK3yjNDs1YynTCQmt
 4+s4bo8vtzhfyuszq3kDqbQLULDU4yU/BIN/2JVnhRs7mSP8aDFyJ1MvalsjyumV9k8BbqD1EHlIx
 umI00jWMJ43xZpD52hjz7bxENgf7UkeFFPTYbJyP91ObtU6gHcyCUFsmkF9ylQzeEMQf0d0PwBfF9
 pij0AFsPP0c3yGjz7gkXZYmGVt2LwcOzCTLoZ9QbNbKCMszKl+rGjZO3dejbh+LoUlecpCUNgVT1R
 YXW6S2Md6djYuweXelN8dLij3dNJjEXq8YvnAiYZyKvbhjY05+ef6Z5aOF7znKbcRpEhCbF2kZKsY
 Fk+k9PuAQFMTx700110nBmq27RR+NoS8TQ8zdUIJGjApzrKw7WsTTT14YhdNtjFhMiO2Ujx/1xqym
 arN7axRG1mYjqPtYjfHAxtwBfFghlIk3Oi67qLm7pVRlLJmSBgkXZE0vYVf2f0ksuHYdWd2RwF1Rl
 tDzIKZ8eYTKR/ql1tzejxs3XIJ+EX4tz/+G+iQeLvTYqiBxrNEaRD7u8Vm1cMeMfplzOFNva3qE7M
 QiqqRJ3QJLhSbd69jzvYb/9ECBCgmArpj/MhLOfHXM/latnvmU5eCZWoKgh//wMGAb79M/K488N0u
 axFiTxfVlQQNYmxe7Q5dLYD0oe8RKaxiFFi5ReBzg=;
To: asmadeus@codewreck.org, David Howells <dhowells@redhat.com>
Date: Thu, 21 Apr 2022 13:36:14 +0200
Message-ID: <1817268.LulUJvKFVv@silver>
In-Reply-To: <1050016.1650537372@warthog.procyon.org.uk>
References: <YlySEa6QGmIHlrdG@codewreck.org> <YlyFEuTY7tASl8aY@codewreck.org>
 <1050016.1650537372@warthog.procyon.org.uk>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag, 21. April 2022 12:36:12 CEST David Howells
 wrote: > asmadeus@codewreck.org wrote: > > int fd = open(argv[1],
 O_WRONLY|O_APPEND); 
 > > if (fd < 0) > > > > return 1; > > > > if (write(fd, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1nhV70-0002nE-NN
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 21. April 2022 12:36:12 CEST David Howells wrote:
> asmadeus@codewreck.org wrote:
> > 	int fd = open(argv[1], O_WRONLY|O_APPEND);
> > 	if (fd < 0)
> > 	
> > 		return 1;
> > 	
> > 	if (write(fd, "test\n", 5) < 0)
> 
> I think I need to implement the ability to store writes in non-uptodate
> pages without needing to read from the server as NFS does.  This may fix
> the performance drop also.
> 
> David

I hope this does not sound harsh, wouldn't it make sense to revert 
eb497943fa215897f2f60fd28aa6fe52da27ca6c for now until those issues are sorted 
out? My concern is that it might take a long time to address them, and these 
are not minor issues.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
