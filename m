Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0AB41EE50
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 15:16:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mWIOi-0002m4-EW; Fri, 01 Oct 2021 13:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1mWIOh-0002lu-CP
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 13:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fzMVXe2YDkGKT9sYS0CtkV1L5hObBAwharIBdigm3cU=; b=aP/oaIWRDvldlkmWxha5yr10Bx
 hvia73WE80NWWbDzNI2Zk5VxNhf4xhXusXGWba64GnpnmfsalrMwaMEfw6d6+ZotlSkZylpKdYUJr
 HHGZe4aF3MOKsCTo+wgzMIEcvmfjzOYE+GNRd38ybbd89uGqXY6gwTPwngdwluiJG/Yw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fzMVXe2YDkGKT9sYS0CtkV1L5hObBAwharIBdigm3cU=; b=PfdWb2hxoDr6DqmhsKUYQd2ZW6
 0cWACh9O0Lo2so3k/XFP8a3lmTeMS5hsc22yHWWqWIs/I97+1Us4+XqBdSHhVa580l8/fZBvO/eGf
 jo++iVhzSB501KOwA1wdihNKRSvAzrp9zsuQIcPhvoZ3V6H+SlUh/0IRoSaAO70IS8YY=;
Received: from smtprelay0155.hostedemail.com ([216.40.44.155]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mWIOg-00Ft6w-Gb
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 13:16:19 +0000
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 88EF2181137B4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  1 Oct 2021 12:59:59 +0000 (UTC)
Received: from omf05.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 1EEB5182CED28;
 Fri,  1 Oct 2021 12:59:53 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf05.hostedemail.com (Postfix) with ESMTPA id 11017B2797; 
 Fri,  1 Oct 2021 12:59:51 +0000 (UTC)
Message-ID: <061762c85ea54ff7ebaaa1b2468f1c8c5cc84eb9.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 01 Oct 2021 05:59:50 -0700
In-Reply-To: <20211001063444.102330-1-sohaib.amhmd@gmail.com>
References: <20211001063444.102330-1-sohaib.amhmd@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 11017B2797
X-Spam-Status: No, score=1.60
X-Stat-Signature: puwwxmhsexewzfpw3qbffo5mdcrmjsjr
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/T9D+S2TnbfTMVQ+IwfzVVUcKNC/yKCc4=
X-HE-Tag: 1633093191-702007
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 2021-10-01 at 08:34 +0200, Sohaib Mohamed wrote: >
    Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com> try using checkpatch
    on your proposed patch. > diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h [] > @@
    -135,8 +135,8 @@ static inline struct fscache_cookie *v9fs_inode_cookie(struct
    v9fs_inode *v9inod >   > >  extern int v9fs_show_options(struct seq_fi [...]
    
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: checkpatch.pl]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [216.40.44.155 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [216.40.44.155 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mWIOg-00Ft6w-Gb
Subject: Re: [V9fs-developer] [PATCH] fs/9p: fix warnings found by
 checkpatch.pl
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, 2021-10-01 at 08:34 +0200, Sohaib Mohamed wrote:
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

try using checkpatch on your proposed patch.

> diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
[]
> @@ -135,8 +135,8 @@ static inline struct fscache_cookie *v9fs_inode_cooki=
e(struct v9fs_inode *v9inod
> =A0
> =

> =A0extern int v9fs_show_options(struct seq_file *m, struct dentry *root);
> =A0
> =

> -struct p9_fid *v9fs_session_init(struct v9fs_session_info *, const char =
*,
> -									char *);
> +struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses, const =
char
> +		*dev_name, char *data);

That's really not pretty as it separates the type of the 2nd argument.

Perhaps:

struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
				 const char *dev_name, char *data);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
