Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 688DBA309BB
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Feb 2025 12:17:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1thoGo-0002xn-4S;
	Tue, 11 Feb 2025 11:17:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <noreply@bbrtransport.com>) id 1thoGm-0002xf-SX
 for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Feb 2025 11:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oK+GR4IxZOTHNwWILS/VoOiKWmp3FV8VJpsaKbGK1o0=; b=YqZnTyx5r+Bc7pYUvqD0B/SZM5
 jYnDdVlWV6wAaEixO/HiIn9wB0GsCLmz3aKDHH5ylvL7ebQsjrbQOimH6bUoPNscU7rV3dtkMjKjq
 pUWXL1vWT0DJ5QT8CcFaQqsWLuCqDviClFOBLXOZ3AfFvUfUbRJQEKGX3umQXQ+OtDvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oK+GR4IxZOTHNwWILS/VoOiKWmp3FV8VJpsaKbGK1o0=; b=f
 1GnNZAbgc/q4DARl/5BVOOdJvCWAvZQvy/WhxjZENGMGkkkL0ezxcUXVYIqRlCy1gLHQGJnjJNgV/
 Tb++YfWGDQH1CvDTgW/fuSbOw+eyColTpXfi95WYM7NE4HuZMl6B6HVy5W8mI6vg21SxS/payOp9Q
 0gdkNXQK84GbVI70=;
Received: from [176.123.1.38] (helo=bbrtransport.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1thoGk-0003tw-Jp for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Feb 2025 11:17:36 +0000
Received: by bbrtransport.com (Postfix, from userid 33)
 id 2DE2251FA1; Tue, 11 Feb 2025 10:45:38 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 0:2012Pk.php
Date: Tue, 11 Feb 2025 09:36:09 +0000
From: NBG Digital Banking <noreply@nbg.com>
Message-ID: <856c9480a0df52385b0da5ff12898e82@nbg.com>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (bbrtransport.com)
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  &Nu;έ&alpha; &epsilon;&nu;&eta;&mu;έ&rho;&omega;&sigma;&eta;
    &kappa;&alpha;&iota; &delta;&iota;&alpha;&theta;έ&sigma;&iota;&mu;&omicron;&sigmaf;
    &omicron;&delta;&eta;&gamma;ό&sigmaf; &alpha;&sigma [...] 
 
 Content analysis details:   (6.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [176.123.1.38 listed in zen.spamhaus.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [176.123.1.38 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [176.123.1.38 listed in bl.score.senderscore.com]
  0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1thoGk-0003tw-Jp
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?WzExLjAyLjIwMjVdIM6dzq3OsSDOtc69zrc=?=
 =?utf-8?b?zrzOrc+Bz4nPg863IM66zrHOuSDOtM65zrHOuM6tz4POuc68zr/PgiDOv860?=
 =?utf-8?b?zrfOs8+Mz4IgzrHPg8+GzrHOu861zq/Osc+C?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoJCgoKCgoKCiZOdTvOrSZhbHBoYTsgJmVwc2lsb247Jm51OyZldGE7Jm11O86tJnJobzsmb21l
Z2E7JnNpZ21hOyZldGE7ICZrYXBwYTsmYWxwaGE7JmlvdGE7ICZkZWx0YTsmaW90YTsmYWxwaGE7
JnRoZXRhO86tJnNpZ21hOyZpb3RhOyZtdTsmb21pY3Jvbjsmc2lnbWFmOyAmb21pY3JvbjsmZGVs
dGE7JmV0YTsmZ2FtbWE7z4wmc2lnbWFmOyAmYWxwaGE7JnNpZ21hOyZwaGk7JmFscGhhOyZsYW1i
ZGE7JmVwc2lsb247zq8mYWxwaGE7JnNpZ21hZjsKCiZuYnNwOwoKJkFscGhhOyZnYW1tYTsmYWxw
aGE7JnBpOyZldGE7JnRhdTvOrSAmcGk7JmVwc2lsb247JmxhbWJkYTvOrCZ0YXU7JmV0YTssCgom
VGhldGE7JmFscGhhOyAmdGhldGE7zq0mbGFtYmRhOyZhbHBoYTsmbXU7JmVwc2lsb247ICZudTsm
YWxwaGE7ICZzaWdtYTsmYWxwaGE7JnNpZ21hZjsgJmVwc2lsb247Jm51OyZldGE7Jm11OyZlcHNp
bG9uOyZyaG87z44mc2lnbWE7Jm9taWNyb247JnVwc2lsb247Jm11OyZlcHNpbG9uOyDPjCZ0YXU7
JmlvdGE7ICZ0aGV0YTsmYWxwaGE7ICZtdTsmZXBzaWxvbjsmdGF1OyZhbHBoYTsmcGhpO86tJnJo
bzsmb21pY3JvbjsmdXBzaWxvbjsmbXU7JmVwc2lsb247ICZ0YXU7Jm9taWNyb247JnVwc2lsb247
JnNpZ21hZjsgJnBpOyZlcHNpbG9uOyZsYW1iZGE7zqwmdGF1OyZlcHNpbG9uOyZzaWdtYWY7ICZt
dTsmYWxwaGE7JnNpZ21hZjsgJnNpZ21hOyZ0YXU7Jm9taWNyb247Jm51OyAmRXBzaWxvbjsmT21p
Y3JvbjsmQ2hpOyAmYWxwaGE7JnBpO8+MICZ0YXU7JmV0YTsmbnU7IE5CRyBDUlQgTHRkLiAmc2ln
bWE7JnRhdTsmZXRhOyZudTsgUlQgRGlnaXRhbCBTZWN1cml0aWVzIEdyZWVjZSBMdGQgKFJURFNH
TCksICZzaWdtYTvPjSZtdTsmcGhpOyZvbWVnYTsmbnU7JmFscGhhOyAmbXU7JmVwc2lsb247ICZ0
YXU7Jm9taWNyb247JnVwc2lsb247JnNpZ21hZjsgJmthcHBhOyZhbHBoYTsmbnU7Jm9taWNyb247
Jm51OyZpb3RhOyZzaWdtYTsmbXU7Jm9taWNyb247z40mc2lnbWFmOyAmdGF1OyZldGE7JnNpZ21h
ZjsgJkVwc2lsb247JkVwc2lsb247IE1pQ0EuCgomUGk7JnJobzsmb21pY3Jvbjsma2FwcGE7JmVw
c2lsb247JmlvdGE7Jm11O86tJm51OyZvbWljcm9uOyZ1cHNpbG9uOyAmbnU7JmFscGhhOyAmc2ln
bWE7JnVwc2lsb247Jm51OyZlcHNpbG9uOyZjaGk7zq8mc2lnbWE7Jm9taWNyb247JnVwc2lsb247
Jm11OyZlcHNpbG9uOyAmbnU7JmFscGhhOyAmZXBzaWxvbjsma2FwcGE7JnBpOyZsYW1iZGE7JmV0
YTsmcmhvO8+OJm51OyZvbWljcm9uOyZ1cHNpbG9uOyZtdTsmZXBzaWxvbjsgJnRhdTsmaW90YTsm
c2lnbWFmOyAmbnU7Jm9taWNyb247Jm11OyZpb3RhOyZrYXBwYTvOrSZzaWdtYWY7ICZtdTsmYWxw
aGE7JnNpZ21hZjsgJnVwc2lsb247JnBpOyZvbWljcm9uOyZjaGk7JnJobzsmZXBzaWxvbjvPjiZz
aWdtYTsmZXBzaWxvbjsmaW90YTsmc2lnbWFmOyAma2FwcGE7JmFscGhhOyZpb3RhOyAmbnU7JmFs
cGhhOyAmbXU7JnBpOyZvbWljcm9uOyZyaG87JmVwc2lsb247zq8mdGF1OyZlcHNpbG9uOyAmbnU7
JmFscGhhOyAmY2hpOyZyaG87JmV0YTsmc2lnbWE7JmlvdGE7Jm11OyZvbWljcm9uOyZwaTsmb21p
Y3JvbjsmaW90YTsmZXBzaWxvbjvOryZ0YXU7JmVwc2lsb247ICZ0YXU7JmlvdGE7JnNpZ21hZjsg
JnRhdTsmcmhvOyZhbHBoYTsmcGk7JmVwc2lsb247JnpldGE7JmlvdGE7JmthcHBhO86tJnNpZ21h
ZjsgJm11OyZhbHBoYTsmc2lnbWFmOyAmdXBzaWxvbjsmcGk7JmV0YTsmcmhvOyZlcHNpbG9uOyZz
aWdtYTvOryZlcHNpbG9uOyZzaWdtYWY7ICZtdTsmZXBzaWxvbjsmdGF1O86sICZ0YXU7JmV0YTsg
Jm11OyZlcHNpbG9uOyZ0YXU7JmFscGhhOyZwaGk7Jm9taWNyb247JnJobzvOrCAmYWxwaGE7JnVw
c2lsb247JnRhdTvOriwgJnpldGE7JmV0YTsmdGF1O86sJm11OyZlcHNpbG9uOyAmYWxwaGE7JnBp
O8+MIM+MJmxhbWJkYTsmb21pY3JvbjsmdXBzaWxvbjsmc2lnbWFmOyAmdGF1OyZvbWljcm9uOyZ1
cHNpbG9uOyZzaWdtYWY7ICZwaTsmZXBzaWxvbjsmbGFtYmRhO86sJnRhdTsmZXBzaWxvbjsmc2ln
bWFmOyAmbXU7JmFscGhhOyZzaWdtYWY7ICZudTsmYWxwaGE7ICZlcHNpbG9uOyZudTsmZXRhOyZt
dTsmZXBzaWxvbjsmcmhvO8+OJnNpZ21hOyZvbWljcm9uOyZ1cHNpbG9uOyZudTsgzqwmbXU7JmVw
c2lsb247JnNpZ21hOyZhbHBoYTsgJnRhdTsmZXRhOyZudTsgJmFscGhhOyZzaWdtYTsmcGhpO86s
JmxhbWJkYTsmZXBzaWxvbjsmaW90YTsmYWxwaGE7ICZ0YXU7Jm9taWNyb247JnVwc2lsb247ICZl
dGE7JmxhbWJkYTsmZXBzaWxvbjsma2FwcGE7JnRhdTsmcmhvOyZvbWljcm9uOyZudTsmaW90YTsm
a2FwcGE7Jm9taWNyb247z40gJnRhdTsmb21pY3JvbjsmdXBzaWxvbjsmc2lnbWFmOyAmbGFtYmRh
OyZvbWljcm9uOyZnYW1tYTsmYWxwaGE7JnJobzsmaW90YTsmYWxwaGE7JnNpZ21hOyZtdTsmb21p
Y3JvbjvPjS4KCiZUYXU7JmlvdGE7ICZwaTsmcmhvO86tJnBpOyZlcHNpbG9uOyZpb3RhOyAmbnU7
JmFscGhhOyAma2FwcGE7zqwmbnU7JmVwc2lsb247JnRhdTsmZXBzaWxvbjs7CgomUGk7JmFscGhh
OyZyaG87JmFscGhhOyZrYXBwYTsmYWxwaGE7JmxhbWJkYTsmb21pY3JvbjvPjSZtdTsmZXBzaWxv
bjsgJm51OyZhbHBoYTsgJmVwc2lsb247JnBpOyZpb3RhOyZiZXRhOyZlcHNpbG9uOyZiZXRhOyZh
bHBoYTsmaW90YTvPjiZzaWdtYTsmZXBzaWxvbjsmdGF1OyZlcHNpbG9uOyAmdGF1OyZhbHBoYTsg
Jm51O86tJmFscGhhOyAmY2hpOyZhbHBoYTsmcmhvOyZhbHBoYTsma2FwcGE7JnRhdTsmZXRhOyZy
aG87JmlvdGE7JnNpZ21hOyZ0YXU7JmlvdGE7JmthcHBhO86sICZlcHNpbG9uOyZsYW1iZGE7zq0m
Z2FtbWE7JmNoaTsmb21pY3JvbjsmdXBzaWxvbjsgJnRhdTsmYWxwaGE7JnVwc2lsb247JnRhdTvP
jCZ0YXU7JmV0YTsmdGF1OyZhbHBoYTsmc2lnbWFmOyAmZGVsdGE7z40mb21pY3JvbjsgJnBpOyZh
bHBoYTsmcmhvOyZhbHBoYTsmZ2FtbWE7z4wmbnU7JnRhdTsmb21lZ2E7Jm51OyAma2FwcGE7JmFs
cGhhOyZpb3RhOyAmbnU7JmFscGhhOyAmZXBzaWxvbjsmbnU7JmV0YTsmbXU7JmVwc2lsb247JnJo
bzvPjiZzaWdtYTsmZXBzaWxvbjsmdGF1OyZlcHNpbG9uOyAmdGF1OyZvbWljcm9uOyZ1cHNpbG9u
OyZzaWdtYWY7ICZkZWx0YTsmaW90YTsmYWxwaGE7JmthcHBhOyZvbWljcm9uOyZtdTsmaW90YTsm
c2lnbWE7JnRhdTvOrSZzaWdtYWY7ICZtdTsmYWxwaGE7JnNpZ21hZjsgMjAyNSAmcGk7JnJobzsm
aW90YTsmbnU7ICZhbHBoYTsmcGk7z4wgJnRhdTsmaW90YTsmc2lnbWFmOyAxMy8wMi8yMDI1LCDP
jiZzaWdtYTsmdGF1OyZlcHNpbG9uOyAmbnU7JmFscGhhOyAmc2lnbWE7JnVwc2lsb247Jm51OyZl
cHNpbG9uOyZjaGk7zq8mc2lnbWE7JmVwc2lsb247JnRhdTsmZXBzaWxvbjsgJm51OyZhbHBoYTsg
JmVwc2lsb247JnBpOyZvbWVnYTsmcGhpOyZlcHNpbG9uOyZsYW1iZGE7JmVwc2lsb247zq8mc2ln
bWE7JnRhdTsmZXBzaWxvbjsgJmFscGhhOyZwaTvPjCAmdGF1OyZpb3RhOyZzaWdtYWY7ICZ0YXU7
JnJobzsmYWxwaGE7JnBpOyZlcHNpbG9uOyZ6ZXRhOyZpb3RhOyZrYXBwYTvOrSZzaWdtYWY7ICZt
dTsmYWxwaGE7JnNpZ21hZjsgJnVwc2lsb247JnBpOyZldGE7JnJobzsmZXBzaWxvbjsmc2lnbWE7
zq8mZXBzaWxvbjsmc2lnbWFmOyAmY2hpOyZvbWVnYTsmcmhvO86vJnNpZ21hZjsgJmRlbHRhOyZp
b3RhOyZhbHBoYTsma2FwcGE7Jm9taWNyb247JnBpO86uLgoKJlBpOyZvbWljcm9uOyZpb3RhOyZl
cHNpbG9uOyZzaWdtYWY7ICZlcHNpbG9uO86vJm51OyZhbHBoYTsmaW90YTsgJm9taWNyb247Jmlv
dGE7ICZzaWdtYTsmdXBzaWxvbjsmbnU7zq0mcGk7JmVwc2lsb247JmlvdGE7JmVwc2lsb247JnNp
Z21hZjsgJmVwc2lsb247zqwmbnU7ICZkZWx0YTsmZXBzaWxvbjsmbnU7ICZwaTsmYWxwaGE7JnJo
bzvOrCZzaWdtYTsmY2hpOyZlcHNpbG9uOyZ0YXU7JmVwc2lsb247ICZ0YXU7JmlvdGE7JnNpZ21h
ZjsgJnBpOyZsYW1iZGE7JmV0YTsmcmhvOyZvbWljcm9uOyZwaGk7Jm9taWNyb247JnJobzvOryZl
cHNpbG9uOyZzaWdtYWY7ICZwaTsmcmhvOyZpb3RhOyZudTsgJmFscGhhOyZwaTvPjCAmdGF1OyZp
b3RhOyZzaWdtYWY7IDEzLzAyLzIwMjQ7CgomRXBzaWxvbjvOrCZudTsgJmRlbHRhOyZlcHNpbG9u
OyZudTsgJmVwc2lsb247JnBpOyZpb3RhOyZiZXRhOyZlcHNpbG9uOyZiZXRhOyZhbHBoYTsmaW90
YTvPjiZzaWdtYTsmZXBzaWxvbjsmdGF1OyZlcHNpbG9uOyAmdGF1OyZpb3RhOyZzaWdtYWY7ICZu
dTvOrSZlcHNpbG9uOyZzaWdtYWY7ICZsYW1iZGE7JmVwc2lsb247JmlvdGE7JnRhdTsmb21pY3Jv
bjsmdXBzaWxvbjsmcmhvOyZnYW1tYTvOryZlcHNpbG9uOyZzaWdtYWY7ICZlcHNpbG9uOyZsYW1i
ZGE7zq0mZ2FtbWE7JmNoaTsmb21pY3JvbjsmdXBzaWxvbjsgJnRhdTsmYWxwaGE7JnVwc2lsb247
JnRhdTvPjCZ0YXU7JmV0YTsmdGF1OyZhbHBoYTsmc2lnbWFmOyAmZGVsdGE7z40mb21pY3Jvbjsg
JnBpOyZhbHBoYTsmcmhvOyZhbHBoYTsmZ2FtbWE7z4wmbnU7JnRhdTsmb21lZ2E7Jm51OyAma2Fw
cGE7JmFscGhhOyZpb3RhOyAmZXBzaWxvbjsmbnU7JmV0YTsmbXU7zq0mcmhvOyZvbWVnYTsmc2ln
bWE7JmV0YTsmc2lnbWFmOyAmcGk7JnJobzsmaW90YTsmbnU7ICZhbHBoYTsmcGk7z4wgJnRhdTsm
ZXRhOyZudTsgJnBpOyZyaG87Jm9taWNyb247JnRoZXRhOyZlcHNpbG9uOyZzaWdtYTsmbXU7zq8m
YWxwaGE7LCAmdGhldGE7JmFscGhhOyAmYWxwaGE7Jm51OyZhbHBoYTsmZ2FtbWE7JmthcHBhOyZh
bHBoYTsmc2lnbWE7JnRhdTsmb21pY3JvbjvPjSZtdTsmZXBzaWxvbjsgJm51OyZhbHBoYTsgJnBp
OyZlcHNpbG9uOyZyaG87JmlvdGE7Jm9taWNyb247JnJobzvOryZzaWdtYTsmb21pY3JvbjsmdXBz
aWxvbjsmbXU7JmVwc2lsb247ICZwaTsmcmhvOyZvbWljcm9uOyZzaWdtYTsmb21lZ2E7JnJobzsm
aW90YTsmbnU7zqwgJnRhdTsmZXRhOyZudTsgJnBpOyZyaG87z4wmc2lnbWE7JmJldGE7JmFscGhh
OyZzaWdtYTvOriAmc2lnbWE7JmFscGhhOyZzaWdtYWY7ICZzaWdtYTsmdGF1OyZpb3RhOyZzaWdt
YWY7ICZ0YXU7JnJobzsmYWxwaGE7JnBpOyZlcHNpbG9uOyZ6ZXRhOyZpb3RhOyZrYXBwYTvOrSZz
aWdtYWY7ICZtdTsmYWxwaGE7JnNpZ21hZjsgJnVwc2lsb247JnBpOyZldGE7JnJobzsmZXBzaWxv
bjsmc2lnbWE7zq8mZXBzaWxvbjsmc2lnbWFmOy4gJk9taWNyb247ICZsYW1iZGE7Jm9taWNyb247
JmdhbW1hOyZhbHBoYTsmcmhvOyZpb3RhOyZhbHBoYTsmc2lnbWE7Jm11O8+MJnNpZ21hZjsgJnNp
Z21hOyZhbHBoYTsmc2lnbWFmOyAmdGhldGE7JmFscGhhOyAmcGk7JmFscGhhOyZyaG87JmFscGhh
OyZtdTsmZXBzaWxvbjvOryZudTsmZXBzaWxvbjsmaW90YTsgJnBpOyZlcHNpbG9uOyZyaG87Jmlv
dGE7Jm9taWNyb247JnJobzsmaW90YTsmc2lnbWE7Jm11O86tJm51OyZvbWljcm9uOyZzaWdtYWY7
IM6tJm9tZWdhOyZzaWdtYWY7IM+MJnRhdTsmb21pY3JvbjsmdXBzaWxvbjsgJmVwc2lsb247JnBp
OyZpb3RhOyZiZXRhOyZlcHNpbG9uOyZiZXRhOyZhbHBoYTsmaW90YTvPjiZzaWdtYTsmZXBzaWxv
bjsmdGF1OyZlcHNpbG9uOyAmdGF1OyZpb3RhOyZzaWdtYWY7ICZudTvOrSZlcHNpbG9uOyZzaWdt
YWY7ICZsYW1iZGE7JmVwc2lsb247JmlvdGE7JnRhdTsmb21pY3JvbjsmdXBzaWxvbjsmcmhvOyZn
YW1tYTvOryZlcHNpbG9uOyZzaWdtYWY7ICZlcHNpbG9uOyZsYW1iZGE7zq0mZ2FtbWE7JmNoaTsm
b21pY3JvbjsmdXBzaWxvbjsgJnRhdTsmYWxwaGE7JnVwc2lsb247JnRhdTvPjCZ0YXU7JmV0YTsm
dGF1OyZhbHBoYTsmc2lnbWFmOyAmZGVsdGE7z40mb21pY3JvbjsgJnBpOyZhbHBoYTsmcmhvOyZh
bHBoYTsmZ2FtbWE7z4wmbnU7JnRhdTsmb21lZ2E7Jm51OyAma2FwcGE7JmFscGhhOyZpb3RhOyAm
ZXBzaWxvbjsmbnU7JmV0YTsmbXU7zq0mcmhvOyZvbWVnYTsmc2lnbWE7JmV0YTsmc2lnbWFmOy4K
CiZuYnNwOwoKCgkKCQkKCQkJJkVwc2lsb247JnBpOyZpb3RhOyZiZXRhOyZlcHNpbG9uOyZiZXRh
OyZhbHBoYTsmaW90YTvPjiZzaWdtYTsmdGF1OyZlcHNpbG9uOyAma2FwcGE7JmFscGhhOyZpb3Rh
OyAmZXBzaWxvbjsmbnU7JmVwc2lsb247JnJobzsmZ2FtbWE7Jm9taWNyb247JnBpOyZvbWljcm9u
OyZpb3RhO86uJnNpZ21hOyZ0YXU7JmVwc2lsb247ICZ0YXU7z44mcmhvOyZhbHBoYTsKCQkKCQoK
CiZuYnNwOwoKJm5ic3A7CgrOiCZjaGk7JmVwc2lsb247JnRhdTsmZXBzaWxvbjsgJmVwc2lsb247
JnJobzsmb21lZ2E7JnRhdTvOriZzaWdtYTsmZXBzaWxvbjsmaW90YTsmc2lnbWFmOzsKJkdhbW1h
OyZpb3RhOyZhbHBoYTsgJnBpOyZlcHNpbG9uOyZyaG87JmlvdGE7JnNpZ21hOyZzaWdtYTvPjCZ0
YXU7JmVwc2lsb247JnJobzsmZXBzaWxvbjsmc2lnbWFmOyAmcGk7JmxhbWJkYTsmZXRhOyZyaG87
Jm9taWNyb247JnBoaTsmb21pY3JvbjsmcmhvO86vJmVwc2lsb247JnNpZ21hZjsgJnNpZ21hOyZj
aGk7JmVwc2lsb247JnRhdTsmaW90YTsma2FwcGE7zqwgJm11OyZlcHNpbG9uOyAmdGF1OyZldGE7
ICZtdTsmZXBzaWxvbjsmdGF1OyZhbHBoYTsmcGhpOyZvbWljcm9uOyZyaG87zqwsICZhbHBoYTsm
bnU7JmFscGhhOyZ0YXU7JnJobzvOrSZ4aTsmdGF1OyZlcHNpbG9uOyAmc2lnbWE7JnRhdTsmaW90
YTsmc2lnbWFmOyAmU2lnbWE7JnVwc2lsb247JmNoaTsmbnU7zq0mc2lnbWFmOyAmRXBzaWxvbjsm
cmhvOyZvbWVnYTsmdGF1O86uJnNpZ21hOyZlcHNpbG9uOyZpb3RhOyZzaWdtYWY7LiAmS2FwcGE7
JmFscGhhOyZpb3RhOyAmYWxwaGE7Jm51OyDOrSZjaGk7JmVwc2lsb247JnRhdTsmZXBzaWxvbjsg
Jm9taWNyb247JnBpOyZvbWljcm9uOyZpb3RhOyZlcHNpbG9uOyZzaWdtYTsmZGVsdGE7zq4mcGk7
Jm9taWNyb247JnRhdTsmZXBzaWxvbjsgJmVwc2lsb247JnJobzsmb21lZ2E7JnRhdTvOriZzaWdt
YTsmZXBzaWxvbjsmaW90YTsmc2lnbWFmOyAmcGk7Jm9taWNyb247JnVwc2lsb247ICZkZWx0YTsm
ZXBzaWxvbjsmbnU7ICZrYXBwYTsmYWxwaGE7JmxhbWJkYTvPjSZwaTsmdGF1OyZvbWljcm9uOyZu
dTsmdGF1OyZhbHBoYTsmaW90YTsgJmFscGhhOyZwaTvPjCAmdGF1OyZpb3RhOyZzaWdtYWY7ICZT
aWdtYTsmdXBzaWxvbjsmY2hpOyZudTvOrSZzaWdtYWY7ICZFcHNpbG9uOyZyaG87Jm9tZWdhOyZ0
YXU7zq4mc2lnbWE7JmVwc2lsb247JmlvdGE7JnNpZ21hZjssICZtdTsmZXRhOyAmZGVsdGE7Jmlv
dGE7JnNpZ21hOyZ0YXU7zqwmc2lnbWE7JmVwc2lsb247JnRhdTsmZXBzaWxvbjsgJm51OyZhbHBo
YTsgJmVwc2lsb247JnBpOyZpb3RhOyZrYXBwYTsmb21pY3JvbjsmaW90YTsmbnU7Jm9tZWdhOyZu
dTvOriZzaWdtYTsmZXBzaWxvbjsmdGF1OyZlcHNpbG9uOyAmbXU7JmFscGhhOyZ6ZXRhO86vICZt
dTsmYWxwaGE7JnNpZ21hZjsgJm11O86tJnNpZ21hOyZvbWVnYTsgJnRhdTsmZXRhOyZzaWdtYWY7
ICZlcHNpbG9uOyZwaGk7JmFscGhhOyZyaG87Jm11OyZvbWljcm9uOyZnYW1tYTvOriZzaWdtYWY7
ICZzaWdtYTsmdXBzaWxvbjsmbnU7Jm9taWNyb247Jm11OyZpb3RhOyZsYW1iZGE7zq8mYWxwaGE7
JnNpZ21hZjsgJm11OyZhbHBoYTsmc2lnbWFmOyAyNC83LgoKLSAmRXRhOyAmb21pY3JvbjsmbXU7
zqwmZGVsdGE7JmFscGhhOyAmdGF1OyZldGE7JnNpZ21hZjsgTkJHCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
