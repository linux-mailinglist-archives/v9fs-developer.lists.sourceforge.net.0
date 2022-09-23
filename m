Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 234035E7391
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 07:58:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obbhx-0002jW-10;
	Fri, 23 Sep 2022 05:58:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1obbhv-0002jE-GY
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 05:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/iIvpzInNW2L3uZJY9kWPPmKLklOvmyPD0pzAfU5SUw=; b=SvW7oSRFyNtCITIQjSYSCI5ey8
 EYRAb7VtuNKZmo8AVDGnQoL0JaxspKVFvg4wqRP28F8BvMsY5dMxhmzXfQfsKjU8c+GVsh6e9Arvj
 kJkA5It4s9t8JhzZb3wwnuV5N/xQKyRsu7uYI2twHKGyh+iexqOBWAz88ct8IWmDSII4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/iIvpzInNW2L3uZJY9kWPPmKLklOvmyPD0pzAfU5SUw=; b=lc4DBpXZJSqi62qC4tgWJYIptA
 b77UmGoQ9mLN+WvgI+K7i302p6BrscRCbuQoY1YzaJ6l9jIRmgrocZpJ+1hxfiFPzZdNZVgfp+ywX
 Pefwa69VD1WjfNdOxOMDmnd366luaU5wQA+t6ZRc3M/k5FxFeaX60jOtTcb6I6ujid/8=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obbhu-0000uG-5X for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 05:58:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2241368AFE; Fri, 23 Sep 2022 07:58:27 +0200 (CEST)
Date: Fri, 23 Sep 2022 07:58:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Moore <paul@paul-moore.com>
Message-ID: <20220923055826.GA15662@lst.de>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
 <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
 <20220922215731.GA28876@mail.hallyn.com>
 <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 06:13:44PM -0400, Paul Moore wrote:
 > In my opinion, sending the entire patchset to the relevant lists > should
 be the default for all the reasons mentioned above. Agreed. I'm perfectly
 fine when people minimize the CCs to actual people (but then for the entire
 patch set), but having only the partial series in an mbox just makes it useful.
 Either the list or per [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1obbhu-0000uG-5X
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 06:13:44PM -0400, Paul Moore wrote:
> In my opinion, sending the entire patchset to the relevant lists
> should be the default for all the reasons mentioned above.

Agreed.  I'm perfectly fine when people minimize the CCs to actual
people (but then for the entire patch set), but having only the
partial series in an mbox just makes it useful.  Either the list
or person on everything or nothing.  I can't actually do anything
with a partial CC except for either ignoring it or shoting at
you that I need the entire series to do something useful with it.

(although in this case I did get all of it anyway).


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
