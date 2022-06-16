Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB59854EBAA
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 22:56:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1wXF-0001MV-FS; Thu, 16 Jun 2022 20:56:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1wXD-0001MI-Kh
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ycjiY+aq2cDehp0fZ6aEcwNIfgJBez5urLaS1XAJP1M=; b=GOMIY2i72sptciKihfuX+Iuj4f
 eS3CxQD4lZ/g7X+SuyY49L8Xp/4eEBpAcaY8gAWZ0yq6NPa9ekYTnxuIy57aHbXb/+ZftY6UsBGCt
 n+yURgxNintCYZq/bR7CzZIAGfK06Tqrxozd6rFrFcZVfuQqduNHRMO0PTKDiErvWgfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ycjiY+aq2cDehp0fZ6aEcwNIfgJBez5urLaS1XAJP1M=; b=Pb8vYJhyYF5I8FaUl80XU7MG3C
 KV1EyN2STVVQpRSZqPbJqx9C86bEtUxJUFY982JwCh7TozPNMFjgzE1JLRB7tmdEUzRRWpE6Dt/Xa
 GXt08gHYPx63QwdkTswA+5Gq367U08sQuNbJG9Htr+XWxv36Nk9sYfLTHix/HaR6mCdo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1wXC-00077B-A9
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:56:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 61D78C01D; Thu, 16 Jun 2022 22:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655412965; bh=ycjiY+aq2cDehp0fZ6aEcwNIfgJBez5urLaS1XAJP1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=huiTsXlReqJ4KWvkpGoI4XylqLGpI3ZCm6DOMZZh6qYsPLom45xR4HVv9zHkdbRxc
 IfENjelJhYPd/0XgzlwzSFIB0/rijOl5XEu/lJyhtPBEvkn0JPHaelq+YAMZuyF3Kb
 tEpUNKMMyc77pV2QH6UNUoq6z3cqLyMltOnCp5TBK6yPpex13b5Hnx8aPKIrbeJE9k
 TJLwzN6kvmTtFLK68HhgAWJwwJ1K/+NTLdCLHTN5vp66/HNStpyFKDAkUzB7+fq/UC
 /eVfcBNUztNy524OV9QmuQczsGNIdnBrd+7R172jbkmvMm5CUkxAFjkhOPkkV544Ve
 kidv60nJ+z+fA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1F1A9C009;
 Thu, 16 Jun 2022 22:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655412964; bh=ycjiY+aq2cDehp0fZ6aEcwNIfgJBez5urLaS1XAJP1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QBGfGSCplw9XBFJutpJGRZkkdcQlpfMD++RNijHy+wwVQC4R0M4KW5W+OoxOoMLe8
 P9wgfm1dX/QhEXhlzzP44nYCzkH6aJfamS85KkvNYJD3gXJihdUPWZX1T9ahVY+9V5
 TNsE8WNEAJ1/QogWrKwygqf7t/3O+tmBJefHnCrf5nNetjQ2VoviBHwffC7LokcDoe
 EwejCjpslJssw8zl9eQg8kOMdYPO9vzVuQtjiYl+IwOM62kG8qYyv3bpulnGL1/+OR
 qrksBawE0pNmO8dn+x9u/ttP5d8TbagoB0SiCcXzRCEglO59K226dXqS2ngOQM8Iww
 EDdnIR1XrAh0Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 15fca7e8;
 Thu, 16 Jun 2022 20:56:00 +0000 (UTC)
Date: Fri, 17 Jun 2022 05:55:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YquY0Ys1MiGoAvyU@codewreck.org>
References: <E1o1tHC-00039k-04@lizzy.crudebyte.com> <1692377.rnsbsUYrV6@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1692377.rnsbsUYrV6@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Jun 16,
 2022 at 09:44:16PM
 +0200: > Better postpone this patch for now: when I use cache=loose, everything
 looks > fine. But when I use cache=mmap it starts with th [...] 
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
X-Headers-End: 1o1wXC-00077B-A9
Subject: Re: [V9fs-developer] [PATCH] net/9p: show warning on Tread/Twrite
 if wrong file mode
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, David Howells <dhowells@redhat.com>,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Jun 16, 2022 at 09:44:16PM +0200:
> Better postpone this patch for now: when I use cache=loose, everything looks
> fine. But when I use cache=mmap it starts with the following warnings on boot:

Noted, I guess that means we're misusing some fids somewhere...

Will have a look when able
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
