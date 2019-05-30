Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D76302C0
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 21:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0WAEWGWcvv01Z/7zAMSaH8S5z7Hlv3dVLBaA7M+Zls=; b=LPh8OWdFQlbacR
	6yEDBbKBIpz8Sr7sX/79/ttTcGAyyEk+MFvwI5W3hedCLeaqzgkSUy4Yec5t1w/LC9hAN5WHQ94v1
	bl71MZ9N0w43M2Xr9r5MdGbi/xaYPbLMHJTIWCJ/ikwm/kcgjHFgAdX8qK4sQHtlkIFuQnB6DjI9a
	El+MYpmxK8UReXHabIuPWRAKRN10SF5YKRULxIEDfa04TmV+opKsxa4ijKIR5s4MBvmlFrX0zy2dd
	DH09ils2D7wyxChMkxXTQ5d/PYIGXB6I5+pasKbIOmJtu4IJjHNX7ZF6rLWtnkiv6VDXhkDkYAMaF
	oxrobMp4PuSb/ovRBvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQiX-0006nt-Bf; Thu, 30 May 2019 19:28:01 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQiS-0006n5-5r
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 19:27:57 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UJNwa5055798;
 Thu, 30 May 2019 19:27:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=IhUh3jBpNvdvShMLg3pD9l8wj1quHLxQ6xzRpaU247Q=;
 b=Ae1pAFDFEUxyU91xa7TEJthY+mPCsh5ki0Fe7s7CfteXeOAB2H7rA2KWnw38MHNWX6W4
 c/mOaj2LWhd9sye3CPE4vWmtxksLtvm+ipEts4vhxYCq5IM3L4QlN5XP0owy4NP0PJpQ
 c0kPTNn+I/M7p99RDn1Qs2jEur6rVSf5pjIxizwnpAhA1BfRtc2p6rX3qldY8nSi4ACw
 BnPcsrmpTm98/jeCpWsu+HQgvymGpJudMvTz8LkaG3xXgZITBj+80OZC0QO8DG05lXyS
 eOYznereWiNuIDAmoUBerxjmrnXwWkXZynUcFSKZQ/VhA8yZxmFyTeNjBFvuohCq1EqR BA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2spu7dtga3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 19:27:43 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UJPRYf086671;
 Thu, 30 May 2019 19:25:43 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2ss1fp90bj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 19:25:42 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4UJPfuC003060;
 Thu, 30 May 2019 19:25:42 GMT
Received: from dhcp-10-154-151-36.vpn.oracle.com (/10.154.151.36)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 May 2019 12:25:41 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [GIT PULL] nvme fixes for 5.2
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
Date: Thu, 30 May 2019 14:25:39 -0500
Message-Id: <69BB238D-F538-4CB6-AF90-1F18AB4DBE57@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
 <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
To: Sagi Grimberg <sagi@grimberg.me>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=11
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905300136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=11 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905300136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_122756_313078_0D575E57 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAzMCwgMjAxOSwgYXQgMTozNSBQTSwgU2FnaSBHcmltYmVyZyA8c2FnaUBncmlt
YmVyZy5tZT4gd3JvdGU6Cj4gCj4gCj4+IEhJIFNhZ2k7Cj4+ICAgICBQcmlvciB0byBpbXBsZW1l
bnRpbmcgdGhlIG5vdGVkIGNvbW1pdHMgd2UgbmV2ZXIgZ290dGVuIHRoaXMgZmFyIGJlZm9yZSBp
biByZWNvdmVyeSBiZWNhdXNlIHRoZSBzeXN0ZW0gZW5jb3VudGVyZWQgdGhlIE9PUFMgYXMgbm90
ZWQgaW4gdGhvc2UgY29tbWl0cyBhbmQgZmVsbCBhcGFydCB3aXRoIGp1c3Qgb25lIG5hbWVzcGFj
ZS4gTm93IHRoaXMgIG9jY3VycyBkdXJpbmcgcGF0aCBmYWlsb3ZlciB0ZXN0aW5nIHdoaWxlIHRy
eWluZyB0byByZWNvbm5lY3QgdHdvIG5hbWUgc3BhY2VzLCAgYW5kIGl0ICBlbmRlZCB1cCB3aXRo
IG1heCByZWNvbm5lY3QgYXR0ZW1wdHMgb2YgNjAgdGhhdCBwcm9kdWNlZCBhICBkaWZmZXJlbnQg
c3RhY2sgdHJhY2UuCj4gCj4gSSBzZWUuCj4gCj4+IEEgbWVzc2FnZSBkaWQgYXBwZWFyIGluIHRo
ZSBsb2cgd2l0aCB0aGUgbmFtZSDigJxudm1lMOKAnSAsIGJ1dCBJIGNhbuKAmXQgdGVsbCBpZiB0
aGF0IGlzIHRoZSBkZXZpY2UgbmFtZSB0aGF0IHdhcyAgYmVpbmcgZGVsZXRlZCAsIG9yIHRoZSBu
ZXh0IG9uZSA6ICBudm1lMTsgIEkgaGF2ZSBubyBmYXJ0aGVyIGV4cGxhbmF0aW9uIHdoeSB0aGUg
IE9PUFMgd291bGQgb2NjdXIgaW4gdGhlIHByaW50IHN0YXRlbWVudCB1bmxlc3Mg4oCcbmFtZeKA
nSB3YXMgbnVsbCwgICBkbyB5b3UgPwo+IAo+IFRoaXMgZG9lcyBub3QgcmVhbHRlIHRvIHRoZSBk
ZXZpY2UgbmFtZSwgYnV0IHJhdGhlciB0byB0aGUgZGV2aWNlIHBhcmVudAo+IHRoYXQgc2VlbXMg
dG8gYmUgTlVMTCAod2UgaGF2ZSBhIHZhbGlkIGtvYmogYnV0IGl0IHBvaW50cyB0byBhIE5VTEwK
PiBwYXJlbnQuIFRoaXMgdXN1YWxseSBoYXBwZW5zIGluIGEgdXNlLWFmdGVyLWZyZWUgY29uZGl0
aW9ucy4KPiAKPiBXaGF0IGlzIHRoZSBGQyBkZXZpY2UgcGFyZW50PyB0aGUgRkMgYWRhcHRlciBk
ZXZpY2U/IG9yIHRoZSAvZGV2L252bWUtZmFicmljcyBkZXZpY2U/CgogICBJIGRvbuKAmXQga25v
dyB5ZXQuICBUaGlzICBldmVudCBhcHBlYXJzIHRvICBvbmx5IGhhcHBlbiB3aXRoIHR3byBuYW1l
LXNwYWNlcyBjb25maWd1cmVkLiAKICAgVGhpcyBwYXJ0aWN1bGFyIGV2ZW50IGlzIG5vdCBzZWVu
IHdpdGggYSBzaW5nbGUgbmFtZS1zcGFjZS4gCgo+IAo+PiBIZXJlIGlzIHRoZSBwcmVhbWJsZSB0
byB0aGUgcHJldmlvdXMgc3RhY2sgdHJhY2UuCj4+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3
LTE2MSBrZXJuZWw6IG52bWUgbnZtZTA6IE5WTUUtRkN7MH06IHJlc2V0OiBSZWNvbm5lY3QKPj4g
YXR0ZW1wdCBmYWlsZWQgKC0yMikKPj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtl
cm5lbDogbnZtZSBudm1lMDogTlZNRS1GQ3swfTogTWF4IHJlY29ubmVjdAo+PiBhdHRlbXB0cyAo
NjApIHJlYWNoZWQuCj4+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IG52
bWUgbnZtZTA6IFJlbW92aW5nIGN0cmw6IE5RTgo+PiAibnFuLjE5OTItMDguY29tLm5ldGFwcDpz
bi4zZDkwMzdjNTNmZWQxMWU5OTIyMjAwYTA5ODZhOGI2MDpzdWJzeXN0ZW0ub2xfbnZtZTFfc3Mx
Igo+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBrZXJuZnM6IGNhbiBu
b3QgcmVtb3ZlICdudm1lMCcsIG5vIGRpcmVjdG9yeQo+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJv
cC01Ny0xNjEga2VybmVsOiAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4g
TWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogV0FSTklORzogQ1BVOiA2IFBJ
RDogMTQyMDYgYXQKPj4gZnMva2VybmZzL2Rpci5jOjE0ODEga2VybmZzX3JlbW92ZV9ieV9uYW1l
X25zKzB4N2UvMHg4Nwo+PiBXZSBhcmUgbm90IHNlZWluZyBmYWlsb3ZlciB3b3JrIGF0IGFsbCB1
c2luZyB0aGUgbHBmYyBkcml2ZXIuICAgVGhlIGNvbm5lY3Rpb25zIGFyZSBlc3RhYmxpc2hlZCBv
biBib290LCBidXQgd2hlbiBvbmUgb2YgdGhlIHBhdGhzIGFyZSBkaXNhYmxlZCBvbiB0aGUgTmV0
QXBwIHRhcmdldCB0aGUgc3lzdGVtIG5ldmVyIGlzIGFibGUgdG8gcmVzdG9yZXMgdGhlIHBhdGhz
Lgo+IAo+IFNvIEkvTyBmYWlsb3ZlciBpcyBub3Qgd29ya2luZyB3aXRoIGxwZmM/IHRoYXQgc2Vl
bXMgdG8gYmUgYSBkaWZmZXJlbnQKPiBpc3N1ZSB0byBtZS4KICAKVGhhdCBpcyBjb3JyZWN0LiBI
YWQgdGhlIEZPIHdvcmtlZCAgaXQgd291bGQgbm90IGhhdmUgZ29uZSB0aHJvdWdoIHRoZSByZWNv
dmVyeSBhdHRlbXB0cyBhbmQgZ290dGVuIGludG8gdGhpcyBzaXR1YXRpb24uICBXaGF0IG1ha2Vz
IG1hdHRlcnMgd29yc2UgaXMgdGhlIHVzZSBvZiDigJxXQVJOSU5H4oCdIGluIHRoZSBudm1lIHN1
YnN5c3RlbSAgKCBzZWUgbXkgcHJldmlvdXMgZW1haWwgb2YgdGhlIHVzZSBvZiBXQVJOSU5HUyAp
IDsgSXQgbGF1bmNoZXMgIGFicnQgKHNvcykgIGhhbmRsaW5nIHdoaWNoIGRvZXMgaW5zcGVjdGlv
bnMgb2YgdmFyaW91cyBmaWxlc3lzdGVtcyB1c2luZyB0b29scyBsaWtlIHB2c2NhbiB0aGF0IGNh
dXNlcyBodW5nIHByb2Nlc3NlcyBhbmQgaHVuZyBkZWFkLW1hbiB0aW1lciBldmVudHMuICAgIAoK
PiBXaGF0IGRvIHlvdSBtZWFuIHRoYXQgdGhlIE5ldEFwcCB0YXJnZXQgbmV2ZXIgaXMgYWJsZSB0
bwo+IHJlc3RvcmUgdGhlIHBhdGhzPyAKCiAgIFRoYXQgd2FzIG1pcy13b3JkaW5nIG9uIG15IHBh
cnQ7IFRoZSBOZXRBcHAgdGFyZ2V0IGRpZCBwcmVzZW50IHRoZSBwYXRocyBhZ2FpbiwgYnV0ICBj
bGllbnQgbmV2ZXIgcmVjb3ZlcmVkIGFuZCB0aG9zZSBudm1lIGRldmljZXMgc3RheWVkIGluIOKA
nGxpdmXigJ0gICwgIOKAnCBpbmFjY2Vzc2libGUg4oCcIHN0YXRlLiAgICAKCj4gIFRoYXQgaXMg
anVzdCBhbiBleHBsYW5hdGlvbiB0byB3aGF0IHRyaWdnZXJzIHRoZQo+IGJ1ZyBvciBpcyB0aGF0
IHNvbWVob3cgcmVsYXRlZD8KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK
