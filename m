Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3886C71A66
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 16:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8htOl5diB39jA1OP8DSe/+GeARf3+kPaVEwKxORyF0=; b=MD25Q/V4jncbnp
	1H67oTkwCfPo/yPow8Zp+e7u20a2dRa94oH8T75us4sUmoNlvQZpJJTffpJfEbBIUlBs5zqPPwUJE
	JsiNCP6HJpS3sp6OBIMIeNFSawjXeVn6EtPRkHGETy1eNxaHAXNDQLXkL0k2gnImOySarOASuCGyd
	ffZvQt3UKp40RikMjt6vdgfBco5fRHh1zEPN3QleDW6gngKvUWlNR8mEr5Xavnq+yVaPg7jmz6gC9
	3jVxPcPuLm5f8h8ZdgqC/Mro/eYQQGP1YMM15XFvw0a5m5MBf/gY6QaMq2GneYOj7Al6pSJB1Yg2k
	s2dvO9srYwogp7q2g+BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvnt-0002HD-7b; Tue, 23 Jul 2019 14:30:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvng-0002C3-5i
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 14:29:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so38697189wmg.0
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 07:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T+ucanRlN4v00bCj+V9TWieMN0M4BoMWf+6f7FC6bAA=;
 b=gQ/V/Kgk2dWanp/KXQhCBr0KJKWqquPK27y24HLK0FJzKOLlf5Cm7tefm2CrJmJKl/
 e7hIxteKhMruQi8hMcCB+4t4z5bjLw3j7xrpiAniv/csxJeyOvqdyFmS6c5uOrNRs+ck
 NAxAHGd9UFgkK71wCLhjZHgWe8f2ZEi9qe2Y0xQJOnHSjFQIxjRzRd0nULv7NAHKFIi3
 9ckf/xG2uyAD+FZs02UaImyAEfQ7hT3RJv1qq+2NaLFxEG33Kgj589rL7Tj58BlI1V4r
 hqGvWo8AB3R1Pu/jWR29eyoiPq5if0NcvdEhrCIoTFvjSHOVmiUcGTKYYGg5azTmXlQ2
 in7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T+ucanRlN4v00bCj+V9TWieMN0M4BoMWf+6f7FC6bAA=;
 b=dYltvp5cN986x4RCyKV9oY53338/yL8yXafW7JHarMc6GpQM+/T90lkU5uQ9id+kjr
 IVL3quBew+falMshyj947uUWBT9Orkru2s+67uslG292L1TmwHz5HW0fqACAoLUPpmO9
 2+EwHZL3yXHzhcNSUfyqLu5n+WEWYrlLlJGOG6aRe1396I+gUGJiHUcVPKXhhMGe/oJZ
 9LpOESyUtFG7wtERurtxErWqWhCL9fCGSM744hX28mGUhOJmTkyeE6DXGp6V8l8XGuxP
 hJcK0L9Lslug2O8kZQahmlozWS9fCxl8MDU4DlsvxR5CyvruKO16nPzpRqCpkzqy6EVX
 oAaA==
X-Gm-Message-State: APjAAAVqc7jiDlWaotLTCWX8fU25lQhwN78f//z8ZBaTZZ+w0vb66gYb
 MQD+BGpvU8Fvc6NNXVjwbxffqH5gxAzsp5cWeZ0=
X-Google-Smtp-Source: APXvYqxtjGdc0X5DgIjGIR/fBYrgXZ6QVvG6t43yMN7+jj0gbuq+mxyzv1SxW3j1Ghs6r1ykg0hciXwlkERlfceRn1E=
X-Received: by 2002:a1c:4c1a:: with SMTP id z26mr68132355wmf.2.1563892193986; 
 Tue, 23 Jul 2019 07:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1333161d2c64dbe93f9dcd0814ffaf6d00216d58.1561385989.git.zhangweiping@didiglobal.com>
 <20190718135916.GC696309@devbig004.ftw2.facebook.com>
In-Reply-To: <20190718135916.GC696309@devbig004.ftw2.facebook.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Tue, 23 Jul 2019 22:29:48 +0800
Message-ID: <CAA70yB5cjengLDTUN3U02yuBmn+dxi2KreegD+u2RohejUocsA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] block: add weighted round robin for blkcgroup
To: Tejun Heo <tj@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_072956_219847_0B0F3DEB 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Minwoo Im <minwoo.im.dev@gmail.com>,
 cgroups@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGVqdW4gSGVvIDx0akBrZXJuZWwub3JnPiDkuo4yMDE55bm0N+aciDE45pel5ZGo5ZubIOS4i+WN
iDEwOjAw5YaZ6YGT77yaCj4KPiBIZWxsbywgV2VpcGluZy4KPgo+IE9uIE1vbiwgSnVuIDI0LCAy
MDE5IGF0IDEwOjI4OjUxUE0gKzA4MDAsIFdlaXBpbmcgWmhhbmcgd3JvdGU6Cj4gPiArc3RhdGlj
IGNvbnN0IGNoYXIgKmJsa193cnJfbmFtZVtCTEtfV1JSX0NPVU5UXSA9IHsKPiA+ICsgICAgIFtC
TEtfV1JSX05PTkVdICAgICAgICAgID0gIm5vbmUiLAo+ID4gKyAgICAgW0JMS19XUlJfTE9XXSAg
ICAgICAgICAgPSAibG93IiwKPiA+ICsgICAgIFtCTEtfV1JSX01FRElVTV0gICAgICAgID0gIm1l
ZGl1bSIsCj4gPiArICAgICBbQkxLX1dSUl9ISUdIXSAgICAgICAgICA9ICJoaWdoIiwKPiA+ICsg
ICAgIFtCTEtfV1JSX1VSR0VOVF0gICAgICAgID0gInVyZ2VudCIsCj4gPiArfTsKPgpIZWxsbyBU
ZWp1biwKCj4gY2dyb3VwIGNvbnRyb2xsZXJzIG11c3QgYmUgZnVsbHkgaGllcmFyY2hpY2FsIHdo
aWNoIHRoZSBwcm9wb3NlZAo+IGltcGxlbWVudGF0aW9uIGlzbid0LiAgV2hpbGUgaXQgY2FuIGJl
IG1hZGUgaGllcmFyY2hpY2FsLCB0aGVyZSdzIG9ubHkKPiBzbyBtdWNoIG9uZSBjYW4gZG8gaWYg
dGhlcmUgYXJlIG9ubHkgZml2ZSBwcmlvcml0eSBsZXZlbHMuCj4KClRoZXNlIHByaW9yaXR5IGFy
ZSBmdWxseSBtYXBwZWQgdG8gbnZtZSBzcGVjaWZpY2F0aW9uIGV4Y2VwdCBXUlJfTk9ORS4KVGhl
IFdlaWdodGVkIFJvdW5kIFJvYmluIG9ubHkgc3VwcG9ydCBzb21lIG9mIG52bWUgZGV2aWNlcywg
bm90IGFsbCBudm1lCnN1cHBvcnQgdGhpcyBmZWF0dXJlLCBpZiB5b3UgdGhpbmsgdGhlIG5hbWUg
b2YgYmxraW8ud3JyIGlzIHRvbyBjb21tb24KZm9yIGJsb2NrIGxheWVyCkkgbGlrZSB0byByZW5h
bWUgaXQgdG8gYmxraW8ubnZtZS53cnIuIFRoaXMgcGF0Y2hzZXQgaW1wbGVudCBhIHNpbXBsZSBp
bnRlcmZhY2UKdG8gdXNlciwgaWYgdXNlciB3YW50IHRvIHVzZSB0aGlzIGZlYXR1cmUgdGhleSBz
aG91bGQgdG8ga25vdyB0aGUgUW9zCm9mIFdSUiBwcm92aWRlZCBieQpudm1lIGRldmljZSBpcyBh
Y2NldGFibGUgZm9yIHRoZWlyIGFwcGxpY2F0aWlvbnMuIFRoZSBOVk1FIFdSUiBpcyBhCnNpbXBs
ZSBhbmQgdXNlZnVsbApmZWF0dXJlLCBJIHdhbnQgdG8gZ2l2ZSB1c2VyIG9uZSBtb3JlIG9wdGlv
biB3aGVuIHRoZXkgc2VsZWN0IGEgcHJvcGVyCmlvIGlzb2xhdGlvbiBwb2xpY3kuCkl0J3Mgbm90
IGEgZ2VuZXJhbCBpbyBpc29sYXRpb24gbWV0aG9kLCBsaWtlIHdoYXQgYmxraW8udGhyb3R0bGxl
IG9yCmlvY29zdCBkaWQsIGl0IGp1c3QgaW1wbGVtZW50CmEgc2ltcGxlIG1hcHBpbmcgYmV0d2Vl
biBhcHBsaWNhdGlvbiBhbmQgbnZtZSBoYXJkd2FyZSBzdWJtaXNzaW9uCnF1ZXVlLCAgbm90IGFk
ZAphbnkgZXh0cmEgaW8gc3RhdGlzdGljIGF0IGJsb2NrIGxheWVyLiBUaGUgd2VpZ2h0IG9mICho
aWdoLCBtZWRpdW0sCmxvdykgYW5kIHRoZSBidXJzdCBjYW4gYmUKY2hhbmdlZCBieSBudm1lLXNl
dC1mZWF0dXJlIGNvbW1hbmQuIEJ1dCB0aGlzIHBhdGNoc2V0IGRvZXMgbm90CnN1cHBvcnQgdGhh
dCwgd2lsbCBiZQphZGRlZCBpbiB0aGUgZmVhdHVyZS4KCj4gQ2FuIHlvdSBwbGVhc2UgdGFrZSBh
IGxvb2sgYXQgdGhlIGZvbGxvd2luZz8KPgo+ICAgaHR0cDovL2xrbWwua2VybmVsLm9yZy9yLzIw
MTkwNzEwMjA1MTI4LjEzMTY0ODMtMS10akBrZXJuZWwub3JnCj4KPiBJbiBjb21wYXJpc29uLCBJ
J20gaGF2aW5nIGEgYml0IG9mIGhhcmQgdGltZSBzZWVpbmcgdGhlIGJlbmVmaXRzIG9mCj4gdGhp
cyBhcHByb2FjaC4gIEluIGFkZGl0aW9uIHRvIHRoZSBmaW5pdGUgbGV2ZWwgbGltaXRhdGlvbiwg
dGhlIGFjdHVhbAo+IFdSUiBiZWhhdmlvciB3b3VsZCBiZSBkZXZpY2UgZGVwZW5kZW50IGFuZCB3
aGF0IGVhY2ggbGV2ZWwgbWVhbnMgaXMKPiBsaWtlbHkgdG8gZmx1Y3R1YXRlIGRlcGVuZGluZyBv
biB0aGUgd29ya2xvYWQgYW5kIGRldmljZSBtb2RlbC4KPgpGcm9tIHRoZSB0ZXN0IHJlc3VsdChz
ZXF1dGlhbCBhbmQgcmFuZG9tKSBpdCBzZWVtcyB0aGUgaGlnaCBwcmlvcml0eQpjYW4gZ2V0IG1v
cmUKYnBzL2lvcHMgdGhhbiBsb3dlciBwcmlvcml0eS4gSWYgZGV2aWNlIGNhbm5vdCBndWFyYW50
ZWUgdGhlIGlvCmxhdGVuY3kgd2hlbiBtaXh0dXJlCklPcyBpc3N1ZWQgdG8gdGhlIGRldmljZSwg
SSB0aGluaywgZm9yIFdSUiwgIHRoZSBzb2Z0d2FyZSBzaG91bGQgdHVuZSBXZWlndGggb2YKaGln
aCxtZWRpdW0sIGxvdyBhbmQgYXJiaXRyYXRpb24gYnVyc3QgbWF5IHByb3ZpZGUgYSBtb3JlIHN0
YWJsZQpsYXRlbmN5LCBsaWtlIHdoYXQKaW9jb3N0IGRvZXModHVuZSBvdmVyYWxsIGlvIGlzc3Vl
IHJhdGUpLgoKPiBJIHdvbmRlciB3aGV0aGVyIFdSUiBpcyBzb21ldGhpbmcgbW9yZSB2YWx1YWJs
ZSB0byBoZWxwIGludGVybmFsIHF1ZXVlCj4gbWFuYWdlbWVudCByYXRoZXIgdGhhbiBiZWluZyBl
eHBvc2VkIHRvIHVzZXJzcGFjZSBkaXJlY3RseS4KPgo+IFRoYW5rcy4KPgo+IC0tCj4gdGVqdW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
