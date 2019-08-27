Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0FB9F50A
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 23:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txa+hAMmGl4aNiHJGHjpBmvBnRjEngMJIAxd0ErUsHk=; b=MWCf9ZBx+F4TWS
	cilNBIuLEgeu/lZaQtGW5oRLlba2uGiXuyuVcK6P6Nc3JXgQk/6Iz6EueN9iIkh+CH7hU7m4F+sJC
	pbbK/64NJsmHzXY1sgNM1Ui+aTSVnMpo+PkeUvMsXDTCdCrqQ+rCym0qbdYZxg+Woue47KIBX77ZV
	3cy2aCYhLLF27ftmexi7gUQ+t1Jkt/2KNWnCt6khvEIQwnbiK4zu2IntV6C2mymjZGK7K2MdIdmFp
	SrrBb8UibzRdawdZYdKuxkb6uwziQaX668IjAqQCGcRQo0HIi/qcNd6IpHCDb4uTm2mwx2izVjEa6
	niOB/ex3joBURj6jFGjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iw8-0001v1-4V; Tue, 27 Aug 2019 21:23:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ivu-0001uh-0g
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 21:23:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so279268wrd.3
 for <linux-nvme@lists.infradead.org>; Tue, 27 Aug 2019 14:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pTOaZhW5xKtnT1x8xRBR+lYJlD1bPd7S9+Vr1x5mo0c=;
 b=k15hrvDzSkku9LhKt4Dw7rN5H5/wnPa5DLw2TxVQi9ZwArGhWd0Bq6pcX7CLvAme9f
 vujFTq4VbRK80hSNZXfgYzkt7nmoJEZukM+3t0q4bv9a6JgkRK6iJFjsjSPGsQJ+2JrC
 HP9YCDUHmub9O9iG6bOWZTl/iWQXjCm/athaXNwoqlGq+la0uegJnH6Pz4pXkvS+ngXp
 u3g7kLmnKo1fMhze/vyb6DVBuZste+cB8J5Ewg4wHYs0Aahb260NPhW6uCxw8/BlK95u
 K8PcgYnn8BBpozs2i3R6x1EZxl3OYzep37PIWYmoiMx4rpp2RZrNvUX55u6Jbxv0r5Ma
 recw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pTOaZhW5xKtnT1x8xRBR+lYJlD1bPd7S9+Vr1x5mo0c=;
 b=KF6n+HkWaDSXkhWvAs1OeZVV27cKBQXtS23YuEp4DrfMkHKNhUPR4qfJBGpDjECmdJ
 RAi76eIspuuDii1wq3hh7SjTwO5AdDWwJEnqgkBwDwaVOZemKjnsaJFPFMU+2UO2h0ZW
 ffDgnQ0OsT822EVIESxd4s2nsQY+6/Vi3fXlPj5MsgyloMjkxakoiXV0k4p2741BcNdr
 IBz/0xe2gsIGYS5kz591yiPnm9imB0HiLoaNsp8dyHY/zkPzjIGzL54EzXCPG98VsApo
 p3ucvGHV1Uszxk0vrNx6l0E0+vdSRAIVzq97GpmpLg7NeNDfW845L/9QgEZYvw0orS0p
 sWQA==
X-Gm-Message-State: APjAAAW8IuhE5sZEC0HrQ8PLFFZlGKvECRg08zy1Bq1uI8sftHfITb1r
 Hcm/DUy0O4SDrFeFI3Y3238=
X-Google-Smtp-Source: APXvYqwch/WIGFqX8UdlE+stqLlGzDb6mAAO+ADMOVPkX0a9I6jBXMkZldGyPc5HrWWioaq5b/AYSQ==
X-Received: by 2002:adf:f281:: with SMTP id k1mr262269wro.154.1566940996262;
 Tue, 27 Aug 2019 14:23:16 -0700 (PDT)
Received: from [192.168.1.19] (ckl27.neoplus.adsl.tpnet.pl. [83.31.87.27])
 by smtp.gmail.com with ESMTPSA id f13sm252179wrr.5.2019.08.27.14.23.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 14:23:15 -0700 (PDT)
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
 <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
 <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
 <86309c4f-bcee-182c-369f-fcc883f379c6@gmail.com>
 <CAC5umyibEMrxhZv0TyS6hYHR+oyj2Oby+LVsjrYmMV8u-chXRQ@mail.gmail.com>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1f7928a1-61ba-72f0-fd03-2208856cd8b8@gmail.com>
Date: Tue, 27 Aug 2019 23:23:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAC5umyibEMrxhZv0TyS6hYHR+oyj2Oby+LVsjrYmMV8u-chXRQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_142318_098992_C89B98BB 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
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

T24gOC8yNy8xOSA0OjAzIFBNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gMjAxOeW5tDjmnIgyNeaX
pSjml6UpIDA6NTMgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pld3NraUBnbWFpbC5jb20+
Ogo+Pgo+PiBPbiA4LzIzLzE5IDY6MDAgUE0sIEFraW5vYnUgTWl0YSB3cm90ZToKPj4+IDIwMTnl
ubQ45pyIMjDml6Uo54GrKSAzOjM4IEphY2VrIEFuYXN6ZXdza2kgPGphY2VrLmFuYXN6ZXdza2lA
Z21haWwuY29tPjoKPj4+Pgo+Pj4+IE9uIDgvMTkvMTkgODoyMiBQTSwgSmFjZWsgQW5hc3pld3Nr
aSB3cm90ZToKPj4+Pj4gT24gOC8xOS8xOSA0OjM4IFBNLCBQYXZlbCBNYWNoZWsgd3JvdGU6Cj4+
Pj4+PiBPbiBTYXQgMjAxOS0wOC0xNyAyMjowNzo0MywgSmFjZWsgQW5hc3pld3NraSB3cm90ZToK
Pj4+Pj4+PiBPbiA4LzE3LzE5IDQ6NTUgUE0sIFBhdmVsIE1hY2hlayB3cm90ZToKPj4+Pj4+Pj4g
T24gRnJpIDIwMTktMDgtMTYgMDE6NTk6NTgsIEFraW5vYnUgTWl0YSB3cm90ZToKPj4+Pj4+Pj4+
IFRoaXMgYWxsb3dzIExFRHMgdG8gYmUgY29udHJvbGxlZCBieSBibG9jayBkZXZpY2UgYWN0aXZp
dHkuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2UgYWxyZWFkeSBoYXZlIGxlZHRyaWctZGlzayAoTEVE
IGRpc2sgYWN0aXZpdHkgdHJpZ2dlciksIGJ1dCB0aGUgbG93ZXIKPj4+Pj4+Pj4+IGxldmVsIGRp
c2sgZHJpdmVycyBuZWVkIHRvIHV0aWxpemUgbGVkdHJpZ19kaXNrX2FjdGl2aXR5KCkgdG8gbWFr
ZSB0aGUKPj4+Pj4+Pj4+IExFRCBibGluay4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGUgTEVEIGJs
b2NrIGRldmljZSB0cmlnZ2VyIGRvZXNuJ3QgcmVxdWlyZSB0aGUgbG93ZXIgbGV2ZWwgZHJpdmVy
cyB0bwo+Pj4+Pj4+Pj4gaGF2ZSBhbnkgaW5zdHJ1bWVudGF0aW9uLiBUaGUgYWN0aXZpdHkgaXMg
Y29sbGVjdGVkIGJ5IHBvbGxpbmcgdGhlIGRpc2sKPj4+Pj4+Pj4+IHN0YXRzLgo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+IEV4YW1wbGU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZWNobyBibG9jay1udm1lMG4x
ID4gL3N5cy9jbGFzcy9sZWRzL2RpeS90cmlnZ2VyCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IExldHMgdXNl
IG9uZSB0cmlnZ2VyICJibG9jayIgYW5kIGhhdmUgdGhlIGRldmljZSBhcyBhIHBhcmFtZXRlciwK
Pj4+Pj4+Pj4gcGxlYXNlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXZSBhbHJlYWR5IGhhdmUgMTAwMCBj
cHUgdHJpZ2dlcnMgb24gMTAwMCBjcHUgbWFjaGluZXMsIGFuZCB5ZXMsIGl0cyBhCj4+Pj4+Pj4+
IGRpc2FzdGVyIHdlJ2xsIG5lZWQgdG8gZml4LiBMZXRzIG5vdCByZXBlYXQgdGhlIHNhbWUgbWlz
dGFrZSBoZXJlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIGd1ZXNzIGl0IG1heSBiZSBzbGlnaHRseSBt
b3JlIHdvcmsuIFNvcnJ5IGFib3V0IHRoYXQuCj4+Pj4+Pj4KPj4+Pj4+PiBXZSBzaG91bGQgYmUg
YWJsZSB0byBsaXN0IGF2YWlsYWJsZSBibG9jayBkZXZpY2VzIHRvIHNldCwKPj4+Pj4+PiBzbyB0
aGUgcHJvYmxlbSB3b3VsZCBiZSBub3QgYXZvaWRlZCBhbnl3YXkuCj4+Pj4+Pgo+Pj4+Pj4gU2hv
dWxkIHdlPyBXZSBuZWVkIHRvIGxpc3QgdHJpZ2dlcnMsIGJ1dCB3ZSBtYXkgbm90IGxpc3QgYWxs
IHRoZSBkZXZpY2VzLi4uCj4+Pj4+Cj4+Pj4+IFRoaXMgaXMgc2ltaWxhciB0byB1c2Jwb3J0IHRy
aWdnZXIgdGhhdCBsaXN0cyBhdmFpbGFibGUKPj4+Pj4gcG9ydHMgYXMgZmlsZXMgaW4gYSBzdWIt
ZGlyZWN0b3J5LiBXZSBtaWdodCBldmVudHVhbGx5IGdvCj4+Pj4+IGluIHRoaXMgZGlyZWN0aW9u
Lgo+Pj4+Cj4+Pj4gSSBtdXN0IHdpdGhkcmF3IHRoaXMgc3RhdGVtZW50LiBUaGlzIGlzIG5vdCBz
aW1pbGFyIHRvIHVzYnBvcnQKPj4+PiB0cmlnZ2VyLiBUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IHdp
dGggbGVkdHJpZy1ibG9jayB3ZSBoYXZlIHNlcGFyYXRlCj4+Pj4gdHJpZ2dlcnMgcGVyIGVhY2gg
ZGV2aWNlIGFuZCBJIGFtIG5vdCBhd2FyZSBpZiB0aGVyZSBpcyBzb21lIGNlbnRyYWxpemVkCj4+
Pj4gbWVjaGFuaXNtIHNpbWlsYXIgdG8gYmxvY2tpbmdfbm90aWZpZXJfY2hhaW4gKHVzYl9ub3Rp
Zmllcl9saXN0Cj4+Pj4gaW4gZHJpdmVycy91c2IvY29yZS9ub3RpZnkuYykgYXZhaWxhYmxlIGZv
ciBibG9jayBkZXZpY2VzLCB0aGF0Cj4+Pj4gd291bGQgYWxsb3cgdG8gZ2F0aGVyIGFsbCBhdmFp
bGFibGUgYmxvY2sgZGV2cyB1bmRlciBjb21tb24gdHJpZ2dlci4KPj4+Pgo+Pj4+IE1vcmVvdmVy
IEkgcmVtZW1iZXIgR3JlZyBvbmNlIGRpc2NvdXJhZ2VkIHVzaW5nIG5vdGlmaWVyIGNoYWlucwo+
Pj4+IGFzIHRoZXkgYXJlIHVuc2FmZSwgc28gd2Ugd291bGQgbmVlZCBzb21lIG90aGVyIHNvbHV0
aW9uIGFueXdheS4KPj4+Cj4+PiBJIHN0YXJ0IHRoaW5raW5nIHRoYXQgd2Ugc2hvdWxkIGltcGxl
bWVudCB0aGUgTEVEIGJsb2NrIGRldmljZSBhY3Rpdml0eQo+Pj4gdHJpZ2dlciBpbiB1c2Vyc3Bh
Y2UuICBUaGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIGZpcnN0bHkgYWN0aXZhdGVzCj4+PiBvbmUt
c2hvdCBMRUQgdHJpZ2dlciBhbmQgcGVyaW9kaWNhbGx5IHJlYWRzIC9zeXMvYmxvY2svPGRpc2s+
L3N0YXQgYW5kCj4+PiB3cml0ZXMgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3Nob3QgaWYgdGhlcmUg
aXMgYW55IGRpc2sgYWN0aXZpdHkuCj4+Cj4+IFRoaXMgd291bGQgc3Vib3B0aW1hbCBzb2x1dGlv
bi4gSSBoYXZlIGFub3RoZXIgaWRlYSAtIGxldCdzIGdldCBiYWNrCj4+IHRvIHRoZSBpbXBsZW1l
bnRhdGlvbiBvZiBsZWR0cmlnLWJsayBpbiBnZW5oZC5jLiBXZSB3b3VsZCBiZSByZWdpc3Rlcmlu
Zwo+PiBvbmUgdHJpZ2dlciBvbiBtb2R1bGUgaW5pdGlhbGl6YXRpb24gaW4gYSBmdW5jdGlvbiB3
aXRoIF9faW5pdCBtb2RpZmllci4KPj4gVGhlbiB3ZSB3b3VsZCBuZWVkIHRvIGFkZC9yZW1vdmUg
dHJpZ2dlcnMgdG8gdGhlIGxlZHRyaWctYmxrIGluCj4+IHJlZ2lzdGVyX2Jsa2RldigpL3VucmVn
aXN0ZXJfYmxrZGV2KCkuIEFuZCByZWdpc3RlcmVkIHRyaWdnZXJzIHdvdWxkCj4+IGJlIGxpc3Rl
ZCBpbiBibG9ja19kZXZzIGRpcmVjdG9yeSBjcmVhdGVkIGJ5IHRoZSB0cmlnZ2VyLgo+Pgo+PiBZ
b3UgY2FuIGNvbXBhcmUgaG93IGRyaXZlcnMvdXNiL2NvcmUvbGVkdHJpZy11c2Jwb3J0LmMgbWFp
bnRhaW5zCj4+IHNpbWlsYXIgZGlyZWN0b3J5IG9mIHVzYiBwb3J0cy4KPiAKPiBJdCBjb3VsZCBi
ZSBwb3NzaWJsZSwgYnV0IEkgaGF2ZSB5ZXQgYW5vdGhlciBpZGVhLiAgV2hhdCBhYm91dCBpbnRy
b2R1Y2luZwo+IC9wcm9jL2xlZC10cmlnZ2VycyBhbmQgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L2N1
cnJlbnQtdHJpZ2dlcj8KPiBUaGUgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3RyaWdnZXIgd2lsbCBi
ZSBvYnNvbGV0ZWQgYnkgdGhlc2UgdHdvIGZpbGVzLgo+IAo+IFRoZSAvcHJvYy9sZWQtdHJpZ2dl
cnMgaXMgcmVhZCBvbmx5IGFuZCBubyBQQUdFX1NJWkUgbGltaXRhdGlvbiBieSB0aGUKPiBzZXFf
ZmlsZSBpbnRlcmZhY2UuICBTbyB3ZSBjYW4gbGlzdCBhbGwgdHJpZ2dlcnMgaW4gdGhpcyBmaWxl
Lgo+IAo+IFRoZSAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vY3VycmVudC10cmlnZ2VyIGlzIGFsbW9z
dCBpZGVudGljYWwgdG8KPiAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vdHJpZ2dlci4gIFRoZSBvbmx5
IGRpZmZlcmVuY2UgaXMgdGhhdAo+ICdjdXJyZW50LXRyaWdnZXInIG9ubHkgc2hvd3MgdGhlIGN1
cnJlbnQgdHJpZ2dlciBuYW1lLgoKVGhlcmUncyBub3QgbmVlZCB0byBjb21lIHVwIHdpdGggeWV0
IGFub3RoZXIgdHJpZ2dlciBpbnRlcmZhY2UuCldlIGp1c3QgbmVlZCB0byBjb252ZXJ0IHN5c2Zz
IHRyaWdnZXIgYXR0cmlidXRlIHR5cGUgdG8gYmluYXJ5LgoKLS0gCkJlc3QgcmVnYXJkcywKSmFj
ZWsgQW5hc3pld3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
