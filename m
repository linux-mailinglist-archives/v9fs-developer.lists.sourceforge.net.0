Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D9A5EEEE5
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Sep 2022 09:24:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odnuD-0001VH-W9;
	Thu, 29 Sep 2022 07:24:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odnuD-0001VB-3R
 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 07:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8xgJCeoUgsZNjtT6KDoCDIr+mxANEC08PbBvO5haN7Q=; b=Ppk8lSSxcIkiCzcCGg5J3JDuOj
 BJt3jMAjau82XuZPBPe8dw278t/6Xwhij44C5J+V6UjYmMfincswOW9KN2XCAbl/ZScuYPUw/cL6E
 c/xnqxkw3NwmvAPYtb+FtHFFNoeGNbBSZRb4P+dGxQtfuz7HXLRh0RSRNfhdpppgESZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8xgJCeoUgsZNjtT6KDoCDIr+mxANEC08PbBvO5haN7Q=; b=kfKNwh4EW6jxy+hX14GDtBIwSE
 9n5Pxjm4BRjDRwHZ5vAQ1j+QRHpHHL0luGJlg0wTjSuCF1lxCfqZUQT662lb1x79Z5Xes5w+d2trA
 TtXe+F95T3RBLNcXASWWmL17i/4i1AmA7sDltp2cK+AIS6sdcxlRggOtm7f214ssgPPw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odnuO-0004hC-W1 for v9fs-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 07:24:37 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BDC99C01E; Thu, 29 Sep 2022 09:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664436269; bh=8xgJCeoUgsZNjtT6KDoCDIr+mxANEC08PbBvO5haN7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KZaQ3bR27CTZjB1QUn3jqwPzDUY4DP3R6wqI4bIr0DK8FD+lcOpPu3+3zwYFtQ3Qw
 8eqXELKd1WZuZz3Dv14TDo6JeH3ydBy3Wkc480gor0TVJko3b5JNLCmm5C0Vo/IaXN
 jNE4oX+LgVwdi1lySRI3DTgzmAv5e1yean+g0snTIf7KVbNOxVa26HY5gY3sGCKZKI
 mmGWQc//GT4TcV2RG4qVMvooGaGgIrMVbT9s2LsBnfEYFoFnI9zCiEqc1378Hi5fgs
 Cb7fuSwvrhezXRg+8nsuyasl3qx//RgSvjz80vUyiIbMTusDuumEuUS8WNsboDbVxi
 kgR3idl569eVA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4CED2C009;
 Thu, 29 Sep 2022 09:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664436269; bh=8xgJCeoUgsZNjtT6KDoCDIr+mxANEC08PbBvO5haN7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KZaQ3bR27CTZjB1QUn3jqwPzDUY4DP3R6wqI4bIr0DK8FD+lcOpPu3+3zwYFtQ3Qw
 8eqXELKd1WZuZz3Dv14TDo6JeH3ydBy3Wkc480gor0TVJko3b5JNLCmm5C0Vo/IaXN
 jNE4oX+LgVwdi1lySRI3DTgzmAv5e1yean+g0snTIf7KVbNOxVa26HY5gY3sGCKZKI
 mmGWQc//GT4TcV2RG4qVMvooGaGgIrMVbT9s2LsBnfEYFoFnI9zCiEqc1378Hi5fgs
 Cb7fuSwvrhezXRg+8nsuyasl3qx//RgSvjz80vUyiIbMTusDuumEuUS8WNsboDbVxi
 kgR3idl569eVA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e36ba166;
 Thu, 29 Sep 2022 07:24:25 +0000 (UTC)
Date: Thu, 29 Sep 2022 16:24:10 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YzVIGuISTnIFSIs9@codewreck.org>
References: <20220928215800.1749929-1-asmadeus@codewreck.org>
 <20220928221923.1751130-1-asmadeus@codewreck.org>
 <YzUzAqsq803Z+rtr@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzUzAqsq803Z+rtr@unreal>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Thu, Sep 29,
 2022 at 08:54:10AM +0300:
 > > + // ensure clnt->trans is initialized to call close() on destroy > >
 + // if and only if create succeeded > > + if (err < 0) { > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1odnuO-0004hC-W1
Subject: Re: [V9fs-developer] [PATCH v3] 9p: client_create/destroy: only
 call trans_mod->close after create
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
Cc: v9fs-developer@lists.sourceforge.net,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Thu, Sep 29, 2022 at 08:54:10AM +0300:
> > +	// ensure clnt->trans is initialized to call close() on destroy
> > +	// if and only if create succeeded
> > +	if (err < 0) {
> > +		clnt->trans = ERR_PTR(err);
> >  		goto out;
> > +	}
> > +	if (IS_ERR(clnt->trans))
> > +		clnt->trans = NULL;
> >  
> >  	if (clnt->msize > clnt->trans_mod->maxsize) {
> >  		clnt->msize = clnt->trans_mod->maxsize;
> > @@ -1036,7 +1043,7 @@ void p9_client_destroy(struct p9_client *clnt)
> >  
> >  	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
> >  
> > -	if (clnt->trans_mod)
> > +	if (clnt->trans_mod && !IS_ERR(clnt->trans))
> 
> It is completely no-go to rely on internal value inside of structure after
> failure in ->create() callback.

We're overriding the value after ->create(), in both cases that might
pose problem (success without setting trans/failure); I can't see how
that would possibly fail.

But as you've seen in the other commit I am in no shape to write any
decent code and consider the implications of what I'm changing in this
untangled mess, so you know what: I'll just leave this broken.

Please send me a patch if you care, I'm done here.
-- 
Dominique



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
