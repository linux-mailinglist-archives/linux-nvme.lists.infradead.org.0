Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868089B421
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 18:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJ4tXdaaphtJdLPmcWTXCtX5AeWOvSltkJv/1xwihos=; b=CvfbdZUOcXeVV7
	jupNjRxCeDacFexMVb9MvrQHe8rlTQKQtsGhY4JOpWhy8SvlXVT7Cxb9rjhc238WfI5lHVWoge6m0
	ObCKGSn6gYE3VzqInKd23v4YSyIoZxHGYYExQVE61PetMssiVkDckia7UlNwyuL/2CY/6Mr/Ov9rB
	o0cmfyrQNia6yTWqs06792KKnByJ+cB2jNCux55BsN1SIYzTHPMXTC2cynzkbU2Lp7TOWo4hmmpbv
	OXif2kZAB9eqjNwY1iFUhuq2KDF8wz8k//Ec5mTEv+amdQBiOdg0WFXdNYtfg3xyh1lgpH77hjB8X
	di6GFdZlUTUf3VJwQNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Bzr-0005wc-Tv; Fri, 23 Aug 2019 16:01:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Bzm-0005vj-3E
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 16:00:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id w11so5346640plp.5
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 09:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=07Egtsx8BTLakWMyam+EKjHQWLxH1naEmDIZmgusaPw=;
 b=kGVFTI4bDL3B5jc2VlVW5iNmXRnUns2ue0ZpTj/fDStyBw8Q9ba/aDJhVLlhhdjQ1j
 ogGV58sT2dQmXFH+ghLlgsrPhOGFZmx0WW6SiMtPKUin6e8nSlYRMn+AYzE9fzIK6wor
 0pqaY5SeWurvg9cHY1LON3iXEhKyCq8YJJ/HmRTRXn2m4qthUFlq0FoItb2VpMQzvjpL
 ZF56Ogp+uaJxM/+62vHmbmSphGhTT0dvJJVSf9FciAyb1QaRotXxvCMY86+MfEttowlS
 bJZCN82/usH7zyQ3DUI4O4NqGizfKpQvdN0qp5jWlp85bmS+20xviHSD63RHYaEG8N6w
 sf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=07Egtsx8BTLakWMyam+EKjHQWLxH1naEmDIZmgusaPw=;
 b=VQ66DBSbyHIlY5Ig6ugpAMPyHLr4b3AB/m3jgG8FZifUhchDQhFBZUsqmCMXG1l31O
 750kxKNXJZx4wDzXKN6w0LhdcAkIN4IGiefpFt70wd5ofvinrSZ6B3gStnYbRnAcSW4Y
 Jl6rDOc6F0Lk6mmDi6T2J6fuiksAlvZbX1MuQSLk6mwCx+BBEZ+poVywSUSUWM8454mc
 8YbQghgGWJ2UbOJMdnh0O6bvFu+85Ppj9fNVFwMhZCXA+CC6RC745BgWbxvEHqyTnzHU
 udoQL29pzwXNO7Sdlz1aRV0b0fsk+JzTVgM+rbzPzRQby7pj9+3aUwff9ZevJO8cOaWc
 47OA==
X-Gm-Message-State: APjAAAUbCxHzAEtNzoucUv4O+wTbk/SFuaO0zunu54KWqsZESJ/kxJlj
 OkisCswMeIvSSiWdtRT4jvpcGdzgkxMaVvfRIDU=
X-Google-Smtp-Source: APXvYqwxreGNcoRuFbMgXFknH7qbT7cPrnLAnQlAAkT7aQK81Y52MAYNqO9wNzUbU3CbY9CwNUKZ4CQXxpNGir8SmPw=
X-Received: by 2002:a17:902:a715:: with SMTP id
 w21mr5383370plq.274.1566576056998; 
 Fri, 23 Aug 2019 09:00:56 -0700 (PDT)
MIME-Version: 1.0
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
 <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
In-Reply-To: <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 24 Aug 2019 01:00:45 +0900
Message-ID: <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_090058_165229_BAD85D95 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

MjAxOeW5tDjmnIgyMOaXpSjngaspIDM6MzggSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gT24gOC8xOS8xOSA4OjIyIFBNLCBKYWNlayBBbmFzemV3c2tp
IHdyb3RlOgo+ID4gT24gOC8xOS8xOSA0OjM4IFBNLCBQYXZlbCBNYWNoZWsgd3JvdGU6Cj4gPj4g
T24gU2F0IDIwMTktMDgtMTcgMjI6MDc6NDMsIEphY2VrIEFuYXN6ZXdza2kgd3JvdGU6Cj4gPj4+
IE9uIDgvMTcvMTkgNDo1NSBQTSwgUGF2ZWwgTWFjaGVrIHdyb3RlOgo+ID4+Pj4gT24gRnJpIDIw
MTktMDgtMTYgMDE6NTk6NTgsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+Pj4+PiBUaGlzIGFsbG93
cyBMRURzIHRvIGJlIGNvbnRyb2xsZWQgYnkgYmxvY2sgZGV2aWNlIGFjdGl2aXR5Lgo+ID4+Pj4+
Cj4gPj4+Pj4gV2UgYWxyZWFkeSBoYXZlIGxlZHRyaWctZGlzayAoTEVEIGRpc2sgYWN0aXZpdHkg
dHJpZ2dlciksIGJ1dCB0aGUgbG93ZXIKPiA+Pj4+PiBsZXZlbCBkaXNrIGRyaXZlcnMgbmVlZCB0
byB1dGlsaXplIGxlZHRyaWdfZGlza19hY3Rpdml0eSgpIHRvIG1ha2UgdGhlCj4gPj4+Pj4gTEVE
IGJsaW5rLgo+ID4+Pj4+Cj4gPj4+Pj4gVGhlIExFRCBibG9jayBkZXZpY2UgdHJpZ2dlciBkb2Vz
bid0IHJlcXVpcmUgdGhlIGxvd2VyIGxldmVsIGRyaXZlcnMgdG8KPiA+Pj4+PiBoYXZlIGFueSBp
bnN0cnVtZW50YXRpb24uIFRoZSBhY3Rpdml0eSBpcyBjb2xsZWN0ZWQgYnkgcG9sbGluZyB0aGUg
ZGlzawo+ID4+Pj4+IHN0YXRzLgo+ID4+Pj4+Cj4gPj4+Pj4gRXhhbXBsZToKPiA+Pj4+Pgo+ID4+
Pj4+IGVjaG8gYmxvY2stbnZtZTBuMSA+IC9zeXMvY2xhc3MvbGVkcy9kaXkvdHJpZ2dlcgo+ID4+
Pj4KPiA+Pj4+IExldHMgdXNlIG9uZSB0cmlnZ2VyICJibG9jayIgYW5kIGhhdmUgdGhlIGRldmlj
ZSBhcyBhIHBhcmFtZXRlciwKPiA+Pj4+IHBsZWFzZS4KPiA+Pj4+Cj4gPj4+PiBXZSBhbHJlYWR5
IGhhdmUgMTAwMCBjcHUgdHJpZ2dlcnMgb24gMTAwMCBjcHUgbWFjaGluZXMsIGFuZCB5ZXMsIGl0
cyBhCj4gPj4+PiBkaXNhc3RlciB3ZSdsbCBuZWVkIHRvIGZpeC4gTGV0cyBub3QgcmVwZWF0IHRo
ZSBzYW1lIG1pc3Rha2UgaGVyZS4KPiA+Pj4+Cj4gPj4+PiBJIGd1ZXNzIGl0IG1heSBiZSBzbGln
aHRseSBtb3JlIHdvcmsuIFNvcnJ5IGFib3V0IHRoYXQuCj4gPj4+Cj4gPj4+IFdlIHNob3VsZCBi
ZSBhYmxlIHRvIGxpc3QgYXZhaWxhYmxlIGJsb2NrIGRldmljZXMgdG8gc2V0LAo+ID4+PiBzbyB0
aGUgcHJvYmxlbSB3b3VsZCBiZSBub3QgYXZvaWRlZCBhbnl3YXkuCj4gPj4KPiA+PiBTaG91bGQg
d2U/IFdlIG5lZWQgdG8gbGlzdCB0cmlnZ2VycywgYnV0IHdlIG1heSBub3QgbGlzdCBhbGwgdGhl
IGRldmljZXMuLi4KPiA+Cj4gPiBUaGlzIGlzIHNpbWlsYXIgdG8gdXNicG9ydCB0cmlnZ2VyIHRo
YXQgbGlzdHMgYXZhaWxhYmxlCj4gPiBwb3J0cyBhcyBmaWxlcyBpbiBhIHN1Yi1kaXJlY3Rvcnku
IFdlIG1pZ2h0IGV2ZW50dWFsbHkgZ28KPiA+IGluIHRoaXMgZGlyZWN0aW9uLgo+Cj4gSSBtdXN0
IHdpdGhkcmF3IHRoaXMgc3RhdGVtZW50LiBUaGlzIGlzIG5vdCBzaW1pbGFyIHRvIHVzYnBvcnQK
PiB0cmlnZ2VyLiBUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IHdpdGggbGVkdHJpZy1ibG9jayB3ZSBo
YXZlIHNlcGFyYXRlCj4gdHJpZ2dlcnMgcGVyIGVhY2ggZGV2aWNlIGFuZCBJIGFtIG5vdCBhd2Fy
ZSBpZiB0aGVyZSBpcyBzb21lIGNlbnRyYWxpemVkCj4gbWVjaGFuaXNtIHNpbWlsYXIgdG8gYmxv
Y2tpbmdfbm90aWZpZXJfY2hhaW4gKHVzYl9ub3RpZmllcl9saXN0Cj4gaW4gZHJpdmVycy91c2Iv
Y29yZS9ub3RpZnkuYykgYXZhaWxhYmxlIGZvciBibG9jayBkZXZpY2VzLCB0aGF0Cj4gd291bGQg
YWxsb3cgdG8gZ2F0aGVyIGFsbCBhdmFpbGFibGUgYmxvY2sgZGV2cyB1bmRlciBjb21tb24gdHJp
Z2dlci4KPgo+IE1vcmVvdmVyIEkgcmVtZW1iZXIgR3JlZyBvbmNlIGRpc2NvdXJhZ2VkIHVzaW5n
IG5vdGlmaWVyIGNoYWlucwo+IGFzIHRoZXkgYXJlIHVuc2FmZSwgc28gd2Ugd291bGQgbmVlZCBz
b21lIG90aGVyIHNvbHV0aW9uIGFueXdheS4KCkkgc3RhcnQgdGhpbmtpbmcgdGhhdCB3ZSBzaG91
bGQgaW1wbGVtZW50IHRoZSBMRUQgYmxvY2sgZGV2aWNlIGFjdGl2aXR5CnRyaWdnZXIgaW4gdXNl
cnNwYWNlLiAgVGhlIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBmaXJzdGx5IGFjdGl2YXRlcwpvbmUt
c2hvdCBMRUQgdHJpZ2dlciBhbmQgcGVyaW9kaWNhbGx5IHJlYWRzIC9zeXMvYmxvY2svPGRpc2s+
L3N0YXQgYW5kCndyaXRlcyAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vc2hvdCBpZiB0aGVyZSBpcyBh
bnkgZGlzayBhY3Rpdml0eS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
