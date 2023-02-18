Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E969B8D0
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 09:50:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTIvG-0005pO-PU;
	Sat, 18 Feb 2023 08:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTIvE-0005pD-Qa
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:50:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sXdImI4nkNQNTEPrwVQoa5Yw0dY8HCwd1vHRxqYPKJY=; b=DRye0Z9yaBsECBk0iZnTFOhhQe
 r/7OOJMQwGmkXb0zLBt0IrVHw2c3Rw2BSCfFeQm4Uf0naJ7HfDrT/AjKaE8MsiqowI3T3dBLIkqBI
 9wvx6yO8AIG+GjQfKSbNN+qRUslNAG+bwmSOTCYt00hBBOFm2ixTVOEhxjzKldvQIk8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sXdImI4nkNQNTEPrwVQoa5Yw0dY8HCwd1vHRxqYPKJY=; b=i55kQoaUT4upYVTAoT2z2fqGBF
 8mo0tq4Cw+D/jM2Z5K2It+Ph/Iok9KJt9knsPAEf+nXnolAmiRLz4DhgrpBTuMRa9GE8LrU94gvhG
 vCyMxq0NSVjooPWnjtuv9+R4CifCdM3qG5Bff/efqopAag7kb+xhzsLGBPVrVXucfBHE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTIvB-008Ht4-W5 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 08:50:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5B757C01C; Sat, 18 Feb 2023 09:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710235; bh=sXdImI4nkNQNTEPrwVQoa5Yw0dY8HCwd1vHRxqYPKJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QL+JBVm61ZHbZfpzS0z30/QJHPq2fa/YzotMPK8iFUJLStoBdU3CvTEX2jzEnYuyw
 6z+Y096nExUAvDDhRe/fdtFaQJYXFvpllyfTWLbL2Yr97I3VlnxjKukaYrL6YwCr3l
 yN7PWCPPBryhmUlfmN/dFxmI+JfDwDgj5yvTd096tuMOtF0hz092kED9hdixeyWaip
 dgGQ+WsT4LMzOERnG3ibRkMKZDnhBNe02YYZGhNCLlrPm4wzqxOXXCf9gw3RRCTkap
 H8IUTwS1+E4v+Wrjhc4+T/cN5lREMVLiBZC+XotGEfNUbbPPgkyEF2Zti42MqvzLzu
 rozfzpcr/sK6w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 14017C009;
 Sat, 18 Feb 2023 09:50:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676710234; bh=sXdImI4nkNQNTEPrwVQoa5Yw0dY8HCwd1vHRxqYPKJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bzl1CnpZNMJWsCQVMYsRbq3nj3xhcmrEDd46AQZjNYKstgvhUqU5mnLsB09u/5Kr1
 Bs9JG8rQBU/IOlCHxv6LLcWyK0HfNk/1lEG1su3KzncFwiIBRHsAzHbkCUOMChK6wV
 xW9CpXh09lGoDMnXmGr8TcXy9bFxgw0uENfHiwFxYGKBPOacHo10AXGnYEkAykR9xy
 IeuibZbKtpopP7VE05IsStciz+JQqmbxalu6Vf3Ris23cezj7Jbrc34bYBiqmE2QPX
 c+WzICD5d7zcnPOTWBb5opd8D4ctI5VNpv1Rm5CSa8sXXXuYl6vexboUGwa4UA33Xo
 cRAycGsYP0ojQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 271fab5c;
 Sat, 18 Feb 2023 08:50:05 +0000 (UTC)
Date: Sat, 18 Feb 2023 17:49:50 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CRLskZ7QOROVWk@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-10-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-10-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:21AM
 +0000: > Checking the p9_fid_put value allows us to pass back errors >
 involved
 if we end up clunking the fid as part of dir_release. > > T [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTIvB-008Ht4-W5
Subject: Re: [V9fs-developer] [PATCH v4 09/11] fs/9p: fix error reporting in
 v9fs_dir_release
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:21AM +0000:
> Checking the p9_fid_put value allows us to pass back errors
> involved if we end up clunking the fid as part of dir_release.
> 
> This can help with more graceful response to errors in writeback
> among other things.

That is good!

Note if there are other refs we won't see any error :/ But I think we
should check p9_fid_put return value way more often, even if all we do
with it is print a warning at some debug level for context.

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
