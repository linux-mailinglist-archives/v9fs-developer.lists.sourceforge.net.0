Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D26F5E6EEE
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 23:57:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obUCZ-0003Sr-MW;
	Thu, 22 Sep 2022 21:57:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <serge@mail.hallyn.com>) id 1obUCX-0003Sk-FJ
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 21:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wJUxzQDvo7TogwCTq5zrgUTo98sK/zDoZLElaK/NKVs=; b=m0kd5cubZOST+LNynCyf5OlM1A
 x0wdWES4OjcAWkURHGpdLKnJ/llnaMvyb95jEjFXYZMUrrCTqlHlx8h0OotNSuCJUJb5vnmWjouHw
 Cp/WouN2zJpgX3qMtOY7kbnMOAPiA7MNR650sJPu+7PS0p7Ca8VvaOSuJXzMSKFsPZe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wJUxzQDvo7TogwCTq5zrgUTo98sK/zDoZLElaK/NKVs=; b=esj86lLW6Sev5jNXr9xPLnoSCG
 i5Y28SrzGG9ULZOJU2tl2wXJC7TLDP7/5evuMm0BQmxLa7wUsMSCx6nJh5sQIxZhxQJ4WQh/b2AbO
 kvvWUq0CKzfk0pEkYnoIrQM3e6YVWOzYyu1Z7I7ayiT9I33t25hXaO9vw83JmLpRoxfc=;
Received: from mail.hallyn.com ([178.63.66.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obUCW-00GxKC-5Q for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 21:57:45 +0000
Received: by mail.hallyn.com (Postfix, from userid 1001)
 id DEE18C1D; Thu, 22 Sep 2022 16:57:31 -0500 (CDT)
Date: Thu, 22 Sep 2022 16:57:31 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Paul Moore <paul@paul-moore.com>
Message-ID: <20220922215731.GA28876@mail.hallyn.com>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
 <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote:
 > On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > > On 9/22/2022 10:57 AM, Linus Torvalds wrote: > > > On [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Headers-End: 1obUCW-00GxKC-5Q
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
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote:
> On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > On 9/22/2022 10:57 AM, Linus Torvalds wrote:
> > > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >> Could we please see the entire patch set on the LSM list?
> > > While I don't think that's necessarily wrong, I would like to point
> > > out that the gitweb interface actually does make it fairly easy to
> > > just see the whole patch-set.
> > >
> > > IOW, that
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> > >
> > > that Christian pointed to is not a horrible way to see it all. Go to
> > > the top-most commit, and it's easy to follow the parent links.
> >
> > I understand that the web interface is fine for browsing the changes.
> > It isn't helpful for making comments on the changes. The discussion
> > on specific patches (e.g. selinux) may have impact on other parts of
> > the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
> > can be a real problem if the higher level mailing list (the LSM list
> > in this case) isn't included.
> 
> This is probably one of those few cases where Casey and I are in
> perfect agreement.  I'd much rather see the patches hit my inbox than
> have to go hunting for them and then awkwardly replying to them (and
> yes, I know there are ways to do that, I just personally find it
> annoying).  I figure we are all deluged with email on a daily basis
> and have developed mechanisms to deal with that in a sane way, what is
> 29 more patches on the pile?

Even better than the web interface, is find the message-id in any of the
emails you did get, and run

b4 mbox 20220922151728.1557914-1-brauner@kernel.org

In general I'd agree with sending the whole set to the lsm list, but
then one needs to start knowing which lists do and don't want the whole
set...  b4 mbox and lei are now how I read all kernel related lists.

-serge


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
