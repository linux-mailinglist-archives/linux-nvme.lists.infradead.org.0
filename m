Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA99BEAD
	for <lists+linux-nvme@lfdr.de>; Sat, 24 Aug 2019 17:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N070Jh8aMH5FnV6yDIGLVIyH7xb0t/bn2q9dDEVUliY=; b=IqzYkWGjZ2vibH
	x1SAgocq7hwBWKTagY+4Yj8VTPBWA39RHDiLCKr0QiFtVg+wIDSHbgmOa9lcP176JsNXsfX8hF1Yj
	CR5HPnpo8W7gF51p3P6XDX2e1GUwNh3QRoYKFn8s9K6L8ae+abs0WE7EyKGrUhW9AaKurTr/ahp5e
	ZtqSWvhAJSzmsW6PUAqEoe0fjxDJ0yPLwb/d4M4SkYS3Qg4vaJX2lgf5IzKM/bI8qXLj5shUdVnhL
	PmBOrtvUXadmiPBkCsX9SYgwHM0ohHUmXkNSOjRpLZciZBIF1HxRDYFMgTL4w8NoYxshC2TBBFyn6
	PwA6oDlJDQIStmkVZFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1YM4-0001GD-2p; Sat, 24 Aug 2019 15:53:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1YLx-0001FN-Ut
 for linux-nvme@lists.infradead.org; Sat, 24 Aug 2019 15:53:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so11881377wmg.0
 for <linux-nvme@lists.infradead.org>; Sat, 24 Aug 2019 08:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vCwPhxu+XisVo9i1552VuYe7l2Hda+qqnfmRLD+DEa0=;
 b=g6yItDStVpTxrMuw1zrWX1FYg02WxYK8nGnjK04ARNPZi46+L0EAzkUEZNYl5LVwYI
 GM3adosi7CHNbt2xSARddVQ4NWcm6nYJDXTqKAVnoLMr3R1gKm2JVRVma2YT1xvKM6BF
 bgviYEqX2CvHlTCem48Q7dkYjSYp2miLB553ZJ1IklEjQGc/dwc8BgGDmpKXdTay4vOv
 D2kvv0Xtci8AvdmiauJoKDtvhi1kqTokBj2n7DJf8XOf6eK8ioH47aemkrqdh2BM4dbQ
 C3HSo/zOMk3nBjHIEXBpc20WnU6uyXuVsUM/zl7QTcnSHOQg6G6+VRU1L8UuX3/xadma
 tdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vCwPhxu+XisVo9i1552VuYe7l2Hda+qqnfmRLD+DEa0=;
 b=g6wsRG6sMO1WLWkP6BYT8cTOyTW+Y7jB3AfTPFA69BRKWEW0ps9IjHl3JHAcSTtjFK
 RyNhmJfHAmrj2B/7rAafpNEDycb4Jdi5RMag4RhXa5jKxeZScCEgL57V2Kq1N6PcV6F3
 OckotiieSezr/8+u7DBOtHrpn2rIUQ2WJccsm3k8EJMmVs2qECMgNq5QN2/tJixgz0fR
 20wX5XoPVw3H0FzrwUiblLN3yc+Um0rxRERqx9Ej9bZHDKJKhPz1yq0z93am+sTlYS1y
 VvcZfKtrg/sjT5VjOWtlPsqSQH5hi7oPpKOgtmbC/RjRBL045uIUyUQioZIEVhhl5ENw
 gc7Q==
X-Gm-Message-State: APjAAAUuZg60VyXihqo4tBL1KGqRJJs5vc5IWN6dev2PJv9We1VUEdOL
 opP1Eka/KosKj+6zN2ZQWHQ=
X-Google-Smtp-Source: APXvYqymVWrjrfwCy4Xz0GWctLage0SMcJKrmEeRaDCOterLyVx97RddgIdLl/i+Fh+xk7qb6rqaQg==
X-Received: by 2002:a1c:a7c9:: with SMTP id
 q192mr11135854wme.144.1566661995736; 
 Sat, 24 Aug 2019 08:53:15 -0700 (PDT)
Received: from [192.168.1.19] (bkw182.neoplus.adsl.tpnet.pl. [83.28.190.182])
 by smtp.gmail.com with ESMTPSA id
 g14sm12075103wrb.38.2019.08.24.08.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 24 Aug 2019 08:53:15 -0700 (PDT)
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
 <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
 <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <86309c4f-bcee-182c-369f-fcc883f379c6@gmail.com>
Date: Sat, 24 Aug 2019 17:53:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_085322_024179_AAE113EB 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
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

T24gOC8yMy8xOSA2OjAwIFBNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gMjAxOeW5tDjmnIgyMOaX
pSjngaspIDM6MzggSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pld3NraUBnbWFpbC5jb20+
Ogo+Pgo+PiBPbiA4LzE5LzE5IDg6MjIgUE0sIEphY2VrIEFuYXN6ZXdza2kgd3JvdGU6Cj4+PiBP
biA4LzE5LzE5IDQ6MzggUE0sIFBhdmVsIE1hY2hlayB3cm90ZToKPj4+PiBPbiBTYXQgMjAxOS0w
OC0xNyAyMjowNzo0MywgSmFjZWsgQW5hc3pld3NraSB3cm90ZToKPj4+Pj4gT24gOC8xNy8xOSA0
OjU1IFBNLCBQYXZlbCBNYWNoZWsgd3JvdGU6Cj4+Pj4+PiBPbiBGcmkgMjAxOS0wOC0xNiAwMTo1
OTo1OCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+Pj4+Pj4+IFRoaXMgYWxsb3dzIExFRHMgdG8gYmUg
Y29udHJvbGxlZCBieSBibG9jayBkZXZpY2UgYWN0aXZpdHkuCj4+Pj4+Pj4KPj4+Pj4+PiBXZSBh
bHJlYWR5IGhhdmUgbGVkdHJpZy1kaXNrIChMRUQgZGlzayBhY3Rpdml0eSB0cmlnZ2VyKSwgYnV0
IHRoZSBsb3dlcgo+Pj4+Pj4+IGxldmVsIGRpc2sgZHJpdmVycyBuZWVkIHRvIHV0aWxpemUgbGVk
dHJpZ19kaXNrX2FjdGl2aXR5KCkgdG8gbWFrZSB0aGUKPj4+Pj4+PiBMRUQgYmxpbmsuCj4+Pj4+
Pj4KPj4+Pj4+PiBUaGUgTEVEIGJsb2NrIGRldmljZSB0cmlnZ2VyIGRvZXNuJ3QgcmVxdWlyZSB0
aGUgbG93ZXIgbGV2ZWwgZHJpdmVycyB0bwo+Pj4+Pj4+IGhhdmUgYW55IGluc3RydW1lbnRhdGlv
bi4gVGhlIGFjdGl2aXR5IGlzIGNvbGxlY3RlZCBieSBwb2xsaW5nIHRoZSBkaXNrCj4+Pj4+Pj4g
c3RhdHMuCj4+Pj4+Pj4KPj4+Pj4+PiBFeGFtcGxlOgo+Pj4+Pj4+Cj4+Pj4+Pj4gZWNobyBibG9j
ay1udm1lMG4xID4gL3N5cy9jbGFzcy9sZWRzL2RpeS90cmlnZ2VyCj4+Pj4+Pgo+Pj4+Pj4gTGV0
cyB1c2Ugb25lIHRyaWdnZXIgImJsb2NrIiBhbmQgaGF2ZSB0aGUgZGV2aWNlIGFzIGEgcGFyYW1l
dGVyLAo+Pj4+Pj4gcGxlYXNlLgo+Pj4+Pj4KPj4+Pj4+IFdlIGFscmVhZHkgaGF2ZSAxMDAwIGNw
dSB0cmlnZ2VycyBvbiAxMDAwIGNwdSBtYWNoaW5lcywgYW5kIHllcywgaXRzIGEKPj4+Pj4+IGRp
c2FzdGVyIHdlJ2xsIG5lZWQgdG8gZml4LiBMZXRzIG5vdCByZXBlYXQgdGhlIHNhbWUgbWlzdGFr
ZSBoZXJlLgo+Pj4+Pj4KPj4+Pj4+IEkgZ3Vlc3MgaXQgbWF5IGJlIHNsaWdodGx5IG1vcmUgd29y
ay4gU29ycnkgYWJvdXQgdGhhdC4KPj4+Pj4KPj4+Pj4gV2Ugc2hvdWxkIGJlIGFibGUgdG8gbGlz
dCBhdmFpbGFibGUgYmxvY2sgZGV2aWNlcyB0byBzZXQsCj4+Pj4+IHNvIHRoZSBwcm9ibGVtIHdv
dWxkIGJlIG5vdCBhdm9pZGVkIGFueXdheS4KPj4+Pgo+Pj4+IFNob3VsZCB3ZT8gV2UgbmVlZCB0
byBsaXN0IHRyaWdnZXJzLCBidXQgd2UgbWF5IG5vdCBsaXN0IGFsbCB0aGUgZGV2aWNlcy4uLgo+
Pj4KPj4+IFRoaXMgaXMgc2ltaWxhciB0byB1c2Jwb3J0IHRyaWdnZXIgdGhhdCBsaXN0cyBhdmFp
bGFibGUKPj4+IHBvcnRzIGFzIGZpbGVzIGluIGEgc3ViLWRpcmVjdG9yeS4gV2UgbWlnaHQgZXZl
bnR1YWxseSBnbwo+Pj4gaW4gdGhpcyBkaXJlY3Rpb24uCj4+Cj4+IEkgbXVzdCB3aXRoZHJhdyB0
aGlzIHN0YXRlbWVudC4gVGhpcyBpcyBub3Qgc2ltaWxhciB0byB1c2Jwb3J0Cj4+IHRyaWdnZXIu
IFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgd2l0aCBsZWR0cmlnLWJsb2NrIHdlIGhhdmUgc2VwYXJh
dGUKPj4gdHJpZ2dlcnMgcGVyIGVhY2ggZGV2aWNlIGFuZCBJIGFtIG5vdCBhd2FyZSBpZiB0aGVy
ZSBpcyBzb21lIGNlbnRyYWxpemVkCj4+IG1lY2hhbmlzbSBzaW1pbGFyIHRvIGJsb2NraW5nX25v
dGlmaWVyX2NoYWluICh1c2Jfbm90aWZpZXJfbGlzdAo+PiBpbiBkcml2ZXJzL3VzYi9jb3JlL25v
dGlmeS5jKSBhdmFpbGFibGUgZm9yIGJsb2NrIGRldmljZXMsIHRoYXQKPj4gd291bGQgYWxsb3cg
dG8gZ2F0aGVyIGFsbCBhdmFpbGFibGUgYmxvY2sgZGV2cyB1bmRlciBjb21tb24gdHJpZ2dlci4K
Pj4KPj4gTW9yZW92ZXIgSSByZW1lbWJlciBHcmVnIG9uY2UgZGlzY291cmFnZWQgdXNpbmcgbm90
aWZpZXIgY2hhaW5zCj4+IGFzIHRoZXkgYXJlIHVuc2FmZSwgc28gd2Ugd291bGQgbmVlZCBzb21l
IG90aGVyIHNvbHV0aW9uIGFueXdheS4KPiAKPiBJIHN0YXJ0IHRoaW5raW5nIHRoYXQgd2Ugc2hv
dWxkIGltcGxlbWVudCB0aGUgTEVEIGJsb2NrIGRldmljZSBhY3Rpdml0eQo+IHRyaWdnZXIgaW4g
dXNlcnNwYWNlLiAgVGhlIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBmaXJzdGx5IGFjdGl2YXRlcwo+
IG9uZS1zaG90IExFRCB0cmlnZ2VyIGFuZCBwZXJpb2RpY2FsbHkgcmVhZHMgL3N5cy9ibG9jay88
ZGlzaz4vc3RhdCBhbmQKPiB3cml0ZXMgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3Nob3QgaWYgdGhl
cmUgaXMgYW55IGRpc2sgYWN0aXZpdHkuCgpUaGlzIHdvdWxkIHN1Ym9wdGltYWwgc29sdXRpb24u
IEkgaGF2ZSBhbm90aGVyIGlkZWEgLSBsZXQncyBnZXQgYmFjawp0byB0aGUgaW1wbGVtZW50YXRp
b24gb2YgbGVkdHJpZy1ibGsgaW4gZ2VuaGQuYy4gV2Ugd291bGQgYmUgcmVnaXN0ZXJpbmcKb25l
IHRyaWdnZXIgb24gbW9kdWxlIGluaXRpYWxpemF0aW9uIGluIGEgZnVuY3Rpb24gd2l0aCBfX2lu
aXQgbW9kaWZpZXIuClRoZW4gd2Ugd291bGQgbmVlZCB0byBhZGQvcmVtb3ZlIHRyaWdnZXJzIHRv
IHRoZSBsZWR0cmlnLWJsayBpbgpyZWdpc3Rlcl9ibGtkZXYoKS91bnJlZ2lzdGVyX2Jsa2Rldigp
LiBBbmQgcmVnaXN0ZXJlZCB0cmlnZ2VycyB3b3VsZApiZSBsaXN0ZWQgaW4gYmxvY2tfZGV2cyBk
aXJlY3RvcnkgY3JlYXRlZCBieSB0aGUgdHJpZ2dlci4KCllvdSBjYW4gY29tcGFyZSBob3cgZHJp
dmVycy91c2IvY29yZS9sZWR0cmlnLXVzYnBvcnQuYyBtYWludGFpbnMKc2ltaWxhciBkaXJlY3Rv
cnkgb2YgdXNiIHBvcnRzLgoKLS0gCkJlc3QgcmVnYXJkcywKSmFjZWsgQW5hc3pld3NraQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
