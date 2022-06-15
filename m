Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB0E54CA2E
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jun 2022 15:47:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1TN7-0002mW-Oq; Wed, 15 Jun 2022 13:47:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1TN0-0002mL-SU
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 13:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PTWn0ePIiBvVGOdZ/hdnTNTan5t62u43ouHTaFlQjB4=; b=ZbIpOasoo78HDK1bU0SmbQXOvw
 pKCOAJY2pCq7/kTqXsmOjMxb+LlHESYkjYdHmxPunkGpAUmxJzHy8GIepLpi5/yhcAmEUHSmBxqk4
 gkMqFz2nTJzlkeE6r8cLhrZML6bHifYe6zDM+Xs0eecSe82gEqVVUv8qhmynmrtC2f9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PTWn0ePIiBvVGOdZ/hdnTNTan5t62u43ouHTaFlQjB4=; b=coo6R9Lssf3DnhNs1GBfW4mKAF
 MZ5gFP4kLiq4BHwiQh+sAYpJs/7uJF0jm2CDRwJfg9kgrif+dQtMYFPuToX1v3e6oRG2mZHSpHsjx
 53emAy7EPD+MgL7cmDloNKAFv2yZfOUutb0v/FwleyoVLr+MIoIpCtKsuGAJmQfBZOxg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1TMr-0004uV-Gq
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 13:47:42 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 6B5E6C01E; Wed, 15 Jun 2022 15:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655300848; bh=PTWn0ePIiBvVGOdZ/hdnTNTan5t62u43ouHTaFlQjB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jIBdiVhs8W2FnA3e6HcjsEbTjNRSjcVyVKNBw4eJNODKn7HNMNI7kdFh4TxplskDl
 95xeFHW5x7BarMqU7vL/vQFCdfslKCwUF+cKzkEgcmkVnTTm3N1Y66ZOH1vCTxjuQN
 2yF5djZsR7wUKJuHHoNXSkQaK4xVXczGDsM5fDa/EuXCitWVBGbiRkJgjoJRHkr3hZ
 Mpup6B/BLKP0oMlHAAAbBnkcZOJijZGHPfkvh10YDM9Q+65easqjM1LkFqYOs1OBMw
 PcsLHcZ2b7Px9lDgpcdlRugpn6bVUB6loOkiKy5ri4V/hdGtqkkgBBUEXi/qaz3odA
 yEYBW1fxUJv+A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D7477C009;
 Wed, 15 Jun 2022 15:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655300847; bh=PTWn0ePIiBvVGOdZ/hdnTNTan5t62u43ouHTaFlQjB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BTZC5LFIbxPOpSpwwCAru9VxKRWjJR0MDK4kal2CkdFrZ1U7Jc+VPNLUsiwzI1bnm
 fLqiFYlrh87PTnYPEniRYakCTidt2BWiDSIV1YfegaMMEIg3wdnJxFXwQbXWewbdbS
 HZYnwcDJ0BGubKbumS/T7XQcSNmRv1JTxFsl2p7dvkWWPjHuZb20PRn/Zl5eLdo+x8
 IRiX1nU3AdpIHzxfLacyshOCVjoxGop4LIQlfd9JlssixeVvyxc2Ywo1ip9ecVjdJG
 w0asfP0HeoQz5H6JFnLfTX7+FrGzCrF076kHMFiUii+ZgRYc5rzlHVSYZkQ3bT4Ujl
 e9N6O+xjZCSuQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3165c53a;
 Wed, 15 Jun 2022 13:47:20 +0000 (UTC)
Date: Wed, 15 Jun 2022 22:47:05 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yqni2QQg0uX9Lx13@codewreck.org>
References: <7044959.MN0D2SvuAq@silver>
 <20220615031647.1764797-1-asmadeus@codewreck.org>
 <21498866.auqpVWlHDa@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21498866.auqpVWlHDa@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Jun 15,
 2022 at 03:00:19PM
 +0200: > > - if (!fid || IS_ERR(fid)) { > > - pr_warn("%s (%d): Trying to
 clunk with invalid fid\n", > > - __func__, task_pid_nr(current) [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1TMr-0004uV-Gq
Subject: Re: [V9fs-developer] [PATCH v3 04/06] 9p fid refcount: add
 p9_fid_get/put wrappers
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tyler Hicks <tyhicks@linux.microsoft.com>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Jun 15, 2022 at 03:00:19PM +0200:
> > -	if (!fid || IS_ERR(fid)) {
> > -		pr_warn("%s (%d): Trying to clunk with invalid fid\n",
> > -			__func__, task_pid_nr(current));
> > -		dump_stack();
> > -		return 0;
> > -	}
> > -	if (!refcount_dec_and_test(&fid->count))
> > -		return 0;
> > -
> 
> I probably would have moved (and that way preserved) that sanity warning to 
> p9_fid_put(), but anyway LGTM.

The existing code was careful not to call clunk on error, but I consider
put() calls to be kind of like free in that it's better to make these
easy to call: this allowed patch 6 reworked most fs/ functions getting a
ref to just initialize fids to NULL and inconditionally call
p9_fid_put() before return.

I guess it's just a matter of preference ultimately, but I think that'll
make it a bit easier to not leak fids. Time will tell if this works :)

> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

Thanks for this and other reviews!

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
