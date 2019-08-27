Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83389EA55
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 16:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe+yiJOt59xZqwkdSuzbWA1AR8fM4mYsPrFHYeTOcuo=; b=tR+QTqBQAJpJU7
	Uz2cyAclDRiEXWmifVh28DEH+2qGAmmifu0lM8ywVBlRkE5S8Sst8RH5urcbvOvCZXqmuYRENe7GY
	q+WAdTwutGzo496+Gw94B3bmlJOsxcECtBJJaGkp2ewxvS2AhA9MDMGZXIGAHcfdTNpOhsrNJbAca
	dJC764c8+xVkJHx+Ny4hUWI2H/ghd0LIGbRlOPIs0a1NwHT+XNAHxkMYXsBZv5pcwL3OpjVSBQR3v
	BGYts4aEMvDOVVPWuBukqKTmW/A9N7uL7ae31tvk5krko4kGGkMb/K9i3H9E+ylOydMWPMz4hti3M
	ezOhumX/IEULns/8FudA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2c4y-00040m-VS; Tue, 27 Aug 2019 14:04:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2c4l-0003zy-5E
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 14:04:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so12731452pgv.13
 for <linux-nvme@lists.infradead.org>; Tue, 27 Aug 2019 07:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vRyuTS5qz2XPINcB7iLgtQKJC9f4ym0cl5Z9n4olkJ8=;
 b=X4MqDOM3NpQlq8zFabAVi3zXT4qB4XT9H6oeKNPetlhQBOGhSnr2vDJQJ1nOTRLmx0
 asfst4+807osIwzlK7laI+rw8CkMci9NUI+M5+yuH2S89cMVQpfzFFh9M70Q5dMx13fB
 iFnS1uZWk3x6p9vX0QsOMWwEQUW9jIvsjgBWowHP13/SWeeVPVCRfaQ7Zfy29eN2aVJe
 X/rEaEbDeLvvyFm0Juwyrdy2laaATjJ5dXTXkiISX1oQf9oZKGF5rzyW4GGE8+ckkgGD
 PPJ5kBhYm3Gp97NE6PYwKqReGMlJyKe8vZnBHZz36EoHkSNoDXPY/GRaReFhgdSKEFVE
 JrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vRyuTS5qz2XPINcB7iLgtQKJC9f4ym0cl5Z9n4olkJ8=;
 b=UATzZRa8tpLYhNgiQXTSrkSIjToNxX8VYRoBsFF+zbHFWD3vyQAlWEBsWaFSw44Wk+
 AeBPL6A0eDZnqDJaxr9d2lS9hNagNfHMNPefJ7Yu/ce9HVnzt7Hk/QmGNTHfMPYtrTaY
 uOpFULj++JCw2ljOTfTNW8S12g7KO4LbnXJO/Fz2pKKQ+M3I+90sls8iktAxddBzgLEe
 VIXf6rVmFjTwX1AWGoVLmXeHUOU2Dm8lQVdiGubboa8hQW3wjWkC0USY3dP/cLxYDB7S
 buMdMZ4pl+IKLf8x5yNYhlfzTJ4i7agbtqDoPZc5LA+ZnuxUALKHFySC11nWfiirPmIu
 spBA==
X-Gm-Message-State: APjAAAXI3yks9M4OA/cR9IR+PitCaJQmG0Tn2Py/bqGwX0jkJe/tIx6P
 ZNSMlagWqbP7oVWAvTIzGzmK6fJfzt9l40MONJI=
X-Google-Smtp-Source: APXvYqxC9fDdQGPHmEP/2yp/CfPRcllwn+ny0Utliu9P6xDn54VSI5qHeGbP0PWgfwoT5mwG9D1Ws/3vWFNeZl4ytJs=
X-Received: by 2002:aa7:8007:: with SMTP id j7mr26172131pfi.154.1566914636187; 
 Tue, 27 Aug 2019 07:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
 <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
 <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
 <86309c4f-bcee-182c-369f-fcc883f379c6@gmail.com>
In-Reply-To: <86309c4f-bcee-182c-369f-fcc883f379c6@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 27 Aug 2019 23:03:45 +0900
Message-ID: <CAC5umyibEMrxhZv0TyS6hYHR+oyj2Oby+LVsjrYmMV8u-chXRQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_070359_227546_BEEC646D 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDjmnIgyNeaXpSjml6UpIDA6NTMgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gT24gOC8yMy8xOSA2OjAwIFBNLCBBa2lub2J1IE1pdGEgd3Jv
dGU6Cj4gPiAyMDE55bm0OOaciDIw5pelKOeBqykgMzozOCBKYWNlayBBbmFzemV3c2tpIDxqYWNl
ay5hbmFzemV3c2tpQGdtYWlsLmNvbT46Cj4gPj4KPiA+PiBPbiA4LzE5LzE5IDg6MjIgUE0sIEph
Y2VrIEFuYXN6ZXdza2kgd3JvdGU6Cj4gPj4+IE9uIDgvMTkvMTkgNDozOCBQTSwgUGF2ZWwgTWFj
aGVrIHdyb3RlOgo+ID4+Pj4gT24gU2F0IDIwMTktMDgtMTcgMjI6MDc6NDMsIEphY2VrIEFuYXN6
ZXdza2kgd3JvdGU6Cj4gPj4+Pj4gT24gOC8xNy8xOSA0OjU1IFBNLCBQYXZlbCBNYWNoZWsgd3Jv
dGU6Cj4gPj4+Pj4+IE9uIEZyaSAyMDE5LTA4LTE2IDAxOjU5OjU4LCBBa2lub2J1IE1pdGEgd3Jv
dGU6Cj4gPj4+Pj4+PiBUaGlzIGFsbG93cyBMRURzIHRvIGJlIGNvbnRyb2xsZWQgYnkgYmxvY2sg
ZGV2aWNlIGFjdGl2aXR5Lgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFdlIGFscmVhZHkgaGF2ZSBsZWR0
cmlnLWRpc2sgKExFRCBkaXNrIGFjdGl2aXR5IHRyaWdnZXIpLCBidXQgdGhlIGxvd2VyCj4gPj4+
Pj4+PiBsZXZlbCBkaXNrIGRyaXZlcnMgbmVlZCB0byB1dGlsaXplIGxlZHRyaWdfZGlza19hY3Rp
dml0eSgpIHRvIG1ha2UgdGhlCj4gPj4+Pj4+PiBMRUQgYmxpbmsuCj4gPj4+Pj4+Pgo+ID4+Pj4+
Pj4gVGhlIExFRCBibG9jayBkZXZpY2UgdHJpZ2dlciBkb2Vzbid0IHJlcXVpcmUgdGhlIGxvd2Vy
IGxldmVsIGRyaXZlcnMgdG8KPiA+Pj4+Pj4+IGhhdmUgYW55IGluc3RydW1lbnRhdGlvbi4gVGhl
IGFjdGl2aXR5IGlzIGNvbGxlY3RlZCBieSBwb2xsaW5nIHRoZSBkaXNrCj4gPj4+Pj4+PiBzdGF0
cy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBFeGFtcGxlOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGVjaG8g
YmxvY2stbnZtZTBuMSA+IC9zeXMvY2xhc3MvbGVkcy9kaXkvdHJpZ2dlcgo+ID4+Pj4+Pgo+ID4+
Pj4+PiBMZXRzIHVzZSBvbmUgdHJpZ2dlciAiYmxvY2siIGFuZCBoYXZlIHRoZSBkZXZpY2UgYXMg
YSBwYXJhbWV0ZXIsCj4gPj4+Pj4+IHBsZWFzZS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gV2UgYWxyZWFk
eSBoYXZlIDEwMDAgY3B1IHRyaWdnZXJzIG9uIDEwMDAgY3B1IG1hY2hpbmVzLCBhbmQgeWVzLCBp
dHMgYQo+ID4+Pj4+PiBkaXNhc3RlciB3ZSdsbCBuZWVkIHRvIGZpeC4gTGV0cyBub3QgcmVwZWF0
IHRoZSBzYW1lIG1pc3Rha2UgaGVyZS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSSBndWVzcyBpdCBtYXkg
YmUgc2xpZ2h0bHkgbW9yZSB3b3JrLiBTb3JyeSBhYm91dCB0aGF0Lgo+ID4+Pj4+Cj4gPj4+Pj4g
V2Ugc2hvdWxkIGJlIGFibGUgdG8gbGlzdCBhdmFpbGFibGUgYmxvY2sgZGV2aWNlcyB0byBzZXQs
Cj4gPj4+Pj4gc28gdGhlIHByb2JsZW0gd291bGQgYmUgbm90IGF2b2lkZWQgYW55d2F5Lgo+ID4+
Pj4KPiA+Pj4+IFNob3VsZCB3ZT8gV2UgbmVlZCB0byBsaXN0IHRyaWdnZXJzLCBidXQgd2UgbWF5
IG5vdCBsaXN0IGFsbCB0aGUgZGV2aWNlcy4uLgo+ID4+Pgo+ID4+PiBUaGlzIGlzIHNpbWlsYXIg
dG8gdXNicG9ydCB0cmlnZ2VyIHRoYXQgbGlzdHMgYXZhaWxhYmxlCj4gPj4+IHBvcnRzIGFzIGZp
bGVzIGluIGEgc3ViLWRpcmVjdG9yeS4gV2UgbWlnaHQgZXZlbnR1YWxseSBnbwo+ID4+PiBpbiB0
aGlzIGRpcmVjdGlvbi4KPiA+Pgo+ID4+IEkgbXVzdCB3aXRoZHJhdyB0aGlzIHN0YXRlbWVudC4g
VGhpcyBpcyBub3Qgc2ltaWxhciB0byB1c2Jwb3J0Cj4gPj4gdHJpZ2dlci4gVGhlIGRpZmZlcmVu
Y2UgaXMgdGhhdCB3aXRoIGxlZHRyaWctYmxvY2sgd2UgaGF2ZSBzZXBhcmF0ZQo+ID4+IHRyaWdn
ZXJzIHBlciBlYWNoIGRldmljZSBhbmQgSSBhbSBub3QgYXdhcmUgaWYgdGhlcmUgaXMgc29tZSBj
ZW50cmFsaXplZAo+ID4+IG1lY2hhbmlzbSBzaW1pbGFyIHRvIGJsb2NraW5nX25vdGlmaWVyX2No
YWluICh1c2Jfbm90aWZpZXJfbGlzdAo+ID4+IGluIGRyaXZlcnMvdXNiL2NvcmUvbm90aWZ5LmMp
IGF2YWlsYWJsZSBmb3IgYmxvY2sgZGV2aWNlcywgdGhhdAo+ID4+IHdvdWxkIGFsbG93IHRvIGdh
dGhlciBhbGwgYXZhaWxhYmxlIGJsb2NrIGRldnMgdW5kZXIgY29tbW9uIHRyaWdnZXIuCj4gPj4K
PiA+PiBNb3Jlb3ZlciBJIHJlbWVtYmVyIEdyZWcgb25jZSBkaXNjb3VyYWdlZCB1c2luZyBub3Rp
ZmllciBjaGFpbnMKPiA+PiBhcyB0aGV5IGFyZSB1bnNhZmUsIHNvIHdlIHdvdWxkIG5lZWQgc29t
ZSBvdGhlciBzb2x1dGlvbiBhbnl3YXkuCj4gPgo+ID4gSSBzdGFydCB0aGlua2luZyB0aGF0IHdl
IHNob3VsZCBpbXBsZW1lbnQgdGhlIExFRCBibG9jayBkZXZpY2UgYWN0aXZpdHkKPiA+IHRyaWdn
ZXIgaW4gdXNlcnNwYWNlLiAgVGhlIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBmaXJzdGx5IGFjdGl2
YXRlcwo+ID4gb25lLXNob3QgTEVEIHRyaWdnZXIgYW5kIHBlcmlvZGljYWxseSByZWFkcyAvc3lz
L2Jsb2NrLzxkaXNrPi9zdGF0IGFuZAo+ID4gd3JpdGVzIC9zeXMvY2xhc3MvbGVkcy88bGVkPi9z
aG90IGlmIHRoZXJlIGlzIGFueSBkaXNrIGFjdGl2aXR5Lgo+Cj4gVGhpcyB3b3VsZCBzdWJvcHRp
bWFsIHNvbHV0aW9uLiBJIGhhdmUgYW5vdGhlciBpZGVhIC0gbGV0J3MgZ2V0IGJhY2sKPiB0byB0
aGUgaW1wbGVtZW50YXRpb24gb2YgbGVkdHJpZy1ibGsgaW4gZ2VuaGQuYy4gV2Ugd291bGQgYmUg
cmVnaXN0ZXJpbmcKPiBvbmUgdHJpZ2dlciBvbiBtb2R1bGUgaW5pdGlhbGl6YXRpb24gaW4gYSBm
dW5jdGlvbiB3aXRoIF9faW5pdCBtb2RpZmllci4KPiBUaGVuIHdlIHdvdWxkIG5lZWQgdG8gYWRk
L3JlbW92ZSB0cmlnZ2VycyB0byB0aGUgbGVkdHJpZy1ibGsgaW4KPiByZWdpc3Rlcl9ibGtkZXYo
KS91bnJlZ2lzdGVyX2Jsa2RldigpLiBBbmQgcmVnaXN0ZXJlZCB0cmlnZ2VycyB3b3VsZAo+IGJl
IGxpc3RlZCBpbiBibG9ja19kZXZzIGRpcmVjdG9yeSBjcmVhdGVkIGJ5IHRoZSB0cmlnZ2VyLgo+
Cj4gWW91IGNhbiBjb21wYXJlIGhvdyBkcml2ZXJzL3VzYi9jb3JlL2xlZHRyaWctdXNicG9ydC5j
IG1haW50YWlucwo+IHNpbWlsYXIgZGlyZWN0b3J5IG9mIHVzYiBwb3J0cy4KCkl0IGNvdWxkIGJl
IHBvc3NpYmxlLCBidXQgSSBoYXZlIHlldCBhbm90aGVyIGlkZWEuICBXaGF0IGFib3V0IGludHJv
ZHVjaW5nCi9wcm9jL2xlZC10cmlnZ2VycyBhbmQgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L2N1cnJl
bnQtdHJpZ2dlcj8KVGhlIC9zeXMvY2xhc3MvbGVkcy88bGVkPi90cmlnZ2VyIHdpbGwgYmUgb2Jz
b2xldGVkIGJ5IHRoZXNlIHR3byBmaWxlcy4KClRoZSAvcHJvYy9sZWQtdHJpZ2dlcnMgaXMgcmVh
ZCBvbmx5IGFuZCBubyBQQUdFX1NJWkUgbGltaXRhdGlvbiBieSB0aGUKc2VxX2ZpbGUgaW50ZXJm
YWNlLiAgU28gd2UgY2FuIGxpc3QgYWxsIHRyaWdnZXJzIGluIHRoaXMgZmlsZS4KClRoZSAvc3lz
L2NsYXNzL2xlZHMvPGxlZD4vY3VycmVudC10cmlnZ2VyIGlzIGFsbW9zdCBpZGVudGljYWwgdG8K
L3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3RyaWdnZXIuICBUaGUgb25seSBkaWZmZXJlbmNlIGlzIHRo
YXQKJ2N1cnJlbnQtdHJpZ2dlcicgb25seSBzaG93cyB0aGUgY3VycmVudCB0cmlnZ2VyIG5hbWUu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1u
dm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
