Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B8D2DEC3
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 15:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bCXfWmubhHj1zyVOJF1Ad5RHxr5VTGAgWYMILnaKMg=; b=YyBpmW7wlSBahV
	8lptPHEXJ5RTBJ7T/F01wGEbNH7fuv4iHsQWFxxn9XtmxlTVR8CylE+aMrwMXZK6OOY89V/0fmT9Y
	S4BQHF0VIxiDT1saoCgb3A5AtqH6uMw1+NTrfZFnjWPx5NJ9CaRzO/ZZiU1xPinVIX4PC9KWfNP48
	aaSnh6o5zMb/KFKdqvSWGWudmD9bNAGFWWGuu67W54wVUZC9K9feFuwHEHMLqiBr0etKmnQEWlEUc
	5GdMD6W6rjfZqRkv0bPd8P3661WnyZKSzD7XoqHTq6J/9Lky7l8czWGCwg2SLhshyaDObaK8vpDZc
	YQkySRoQn9xDYVYMaUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVytQ-0004Qv-00; Wed, 29 May 2019 13:45:24 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVytL-0004QQ-7S
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 13:45:20 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TDiElK188585;
 Wed, 29 May 2019 13:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=QP5eN1VAi2Cz1rWj0rcW6d7vZ8k1Sim1dLHvmMRMAKg=;
 b=4sX4EEO9dn/zLg6wNKtdYuP/h8IqPM9rHfSy5cITlHNxtZhw+AbVm64lL+rLatqIsH9W
 P8sd2kmuC9cLz/OgBWkx7/Tp9qevstgwGxBeOF75/n4E9/nDMyuOExYJ4RA7MIt127jJ
 /S8P8HmBEvsBysvGssrwSLXowt/Tt6/xf3YE1T8eGzvpZRdUdEwJXlWuazfmqCDrn3HX
 /ESVK/z4ATG6ijDhXLk2j3SpGzEdO1kOhYOi8ScrVTJGHKZ2Oq54Q9/3QxUZdTFWEdpZ
 OdZfiqC/TMB6Tc2kpekLxeYtOvKPHoDtfjJ5pyzzbgGgo/WdXa33eDgAEhQnGcEminGJ Eg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2spu7dj1uj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 13:45:02 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TDiO2q024726;
 Wed, 29 May 2019 13:45:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2sqh73qdmh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 13:45:02 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4TDj07e025326;
 Wed, 29 May 2019 13:45:01 GMT
Received: from dhcp-10-154-100-187.vpn.oracle.com (/10.154.100.187)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 May 2019 06:45:00 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [GIT PULL] nvme fixes for 5.2
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
Date: Wed, 29 May 2019 08:44:54 -0500
Message-Id: <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
To: Sagi Grimberg <sagi@grimberg.me>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=11
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290090
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=11 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_064519_361118_D29A41B0 
X-CRM114-Status: GOOD (  20.22  )
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

Cgo+IE9uIE1heSAyOSwgMjAxOSwgYXQgMToyMiBBTSwgU2FnaSBHcmltYmVyZyA8c2FnaUBncmlt
YmVyZy5tZT4gd3JvdGU6Cj4gCj4gCj4+ICAgSXQgYXBwZWFycyB0byBtZSB0aGUgY2FsbGVyIG52
bWVfZnJlZV9jdHJsKCkgIGlzIHVzaW5nIGEgZGV2aWNlIG5hbWUgdGhhdCBoYXMgYmVlbiBjbGVh
cmVkIDoKPj4gICAgIHN5c2ZzX3JlbW92ZV9saW5rKCZzdWJzeXMtPmRldi5rb2JqLCBkZXZfbmFt
ZShjdHJsLT5kZXZpY2UpKTsKPj4gVGhlIG5hbWUgcGFzc2VkIGluIGlzIG51bGwgaW4ga2VybmZz
X3JlbW92ZV9ieV9uYW1lX25zKCkgOgo+PiAgaWYgKCFwYXJlbnQpIHsKPj4gICAgV0FSTigxLCBL
RVJOX1dBUk5JTkcgImtlcm5mczogY2FuIG5vdCByZW1vdmUgJyVzJywgbm8gZGlyZWN0b3J5XG4i
LCAgIG5hbWUpOwo+IAo+IFdoZXJlIGRvIHlvdSBzZWUgdGhpcyB3YXJuaW5nIGluIHRoZSBsb2c/
Cj4gCj4+IEkgZG9u4oCZdCBoYXZlIGEgYWN0dWFsIGNyYXNoIGR1bXAgdG8gZXhhbWluZSB0aG91
Z2guCj4gCj4gSXMgdGhpcyBhIHJlZ3Jlc3Npb24gdGhlbj8gb3IgZGlkIHRoaXMgbm90IHdvcmsg
YmVmb3JlIHRoZSBhYm92ZQo+IHBhdGNoZXM/Cj4gCj4gV291bGQgaXQgYmUgcG9zc2libGUgdG8g
Z2V0IHNvbWUgbW9yZSBvZiB0aGUgbG9nPwo+IAo+IEFsc28sIEkgc2VlIHRoYXQgdGhpcyBpcyB0
aGUgcmVtb3ZhbCBmbG93LCB3YXMgdGhhdCBpbnRlbnRpb25hbAo+IHJlbW92YWwgZHVyaW5nIHRo
ZSByZWNvbm5lY3Q/IG9yIGRpZCBjdHJsX2xvc3NfdG1vIGV4cGlyZWQ/CgoKSEkgU2FnaTsKCiAg
ICBQcmlvciB0byBpbXBsZW1lbnRpbmcgdGhlIG5vdGVkIGNvbW1pdHMgd2UgbmV2ZXIgZ290dGVu
IHRoaXMgZmFyIGJlZm9yZSBpbiByZWNvdmVyeSBiZWNhdXNlIHRoZSBzeXN0ZW0gZW5jb3VudGVy
ZWQgdGhlIE9PUFMgYXMgbm90ZWQgaW4gdGhvc2UgY29tbWl0cyBhbmQgZmVsbCBhcGFydCB3aXRo
IGp1c3Qgb25lIG5hbWVzcGFjZS4gTm93IHRoaXMgIG9jY3VycyBkdXJpbmcgcGF0aCBmYWlsb3Zl
ciB0ZXN0aW5nIHdoaWxlIHRyeWluZyB0byByZWNvbm5lY3QgdHdvIG5hbWUgc3BhY2VzLCAgYW5k
IGl0ICBlbmRlZCB1cCB3aXRoIG1heCByZWNvbm5lY3QgYXR0ZW1wdHMgb2YgNjAgdGhhdCBwcm9k
dWNlZCBhICBkaWZmZXJlbnQgc3RhY2sgdHJhY2UuCgpBIG1lc3NhZ2UgZGlkIGFwcGVhciBpbiB0
aGUgbG9nIHdpdGggdGhlIG5hbWUg4oCcbnZtZTDigJ0gLCBidXQgSSBjYW7igJl0IHRlbGwgaWYg
dGhhdCBpcyB0aGUgZGV2aWNlIG5hbWUgdGhhdCB3YXMgIGJlaW5nIGRlbGV0ZWQgLCBvciB0aGUg
bmV4dCBvbmUgOiAgbnZtZTE7ICBJIGhhdmUgbm8gZmFydGhlciBleHBsYW5hdGlvbiB3aHkgdGhl
ICBPT1BTIHdvdWxkIG9jY3VyIGluIHRoZSBwcmludCBzdGF0ZW1lbnQgdW5sZXNzIOKAnG5hbWXi
gJ0gd2FzIG51bGwsICAgZG8geW91ID8gICAKCgpIZXJlIGlzIHRoZSBwcmVhbWJsZSB0byB0aGUg
cHJldmlvdXMgc3RhY2sgdHJhY2UuIAoKTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtl
cm5lbDogbnZtZSBudm1lMDogTlZNRS1GQ3swfTogcmVzZXQ6IFJlY29ubmVjdAphdHRlbXB0IGZh
aWxlZCAoLTIyKQpNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBudm1lIG52
bWUwOiBOVk1FLUZDezB9OiBNYXggcmVjb25uZWN0CmF0dGVtcHRzICg2MCkgcmVhY2hlZC4KTWF5
IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogbnZtZSBudm1lMDogUmVtb3Zpbmcg
Y3RybDogTlFOCiJucW4uMTk5Mi0wOC5jb20ubmV0YXBwOnNuLjNkOTAzN2M1M2ZlZDExZTk5MjIy
MDBhMDk4NmE4YjYwOnN1YnN5c3RlbS5vbF9udm1lMV9zczEiCk1heSAyNCAyMTowOTozMSBpbnRl
cm9wLTU3LTE2MSBrZXJuZWw6IGtlcm5mczogY2FuIG5vdCByZW1vdmUgJ252bWUwJywgbm8gZGly
ZWN0b3J5Ck1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IC0tLS0tLS0tLS0t
LVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEg
a2VybmVsOiBXQVJOSU5HOiBDUFU6IDYgUElEOiAxNDIwNiBhdApmcy9rZXJuZnMvZGlyLmM6MTQ4
MSBrZXJuZnNfcmVtb3ZlX2J5X25hbWVfbnMrMHg3ZS8weDg3CgpXZSBhcmUgbm90IHNlZWluZyBm
YWlsb3ZlciB3b3JrIGF0IGFsbCB1c2luZyB0aGUgbHBmYyBkcml2ZXIuICAgVGhlIGNvbm5lY3Rp
b25zIGFyZSBlc3RhYmxpc2hlZCBvbiBib290LCBidXQgd2hlbiBvbmUgb2YgdGhlIHBhdGhzIGFy
ZSBkaXNhYmxlZCBvbiB0aGUgTmV0QXBwIHRhcmdldCB0aGUgc3lzdGVtIG5ldmVyIGlzIGFibGUg
dG8gcmVzdG9yZXMgdGhlIHBhdGhzLiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
