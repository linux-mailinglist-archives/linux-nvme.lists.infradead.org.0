Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439F16026C
	for <lists+linux-nvme@lfdr.de>; Sun, 16 Feb 2020 09:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2b/7U2fXhh8ZdeI2XWxFKCx+V3dY3+ja7e5gT4mUqv0=; b=I2Y5Kv8v4HxpOC
	xeeiJGevkTvZj+mlZYCFd1QF71tYSajB1LIwj38xB0AcpVxwxw2SIv7VgdpbSHo2fHQhr/ltHIA6Q
	5Y6jmfhYnzeyy2X5uajQzjzoPSIWBES5LG1q0pnLtCCE2NTnTjbGxHvojTRIzQL/JCmS0JK5p0b8w
	fsfL0axUNe1l4jTL9WuLhhz40Qa2F8rD8YRoAs4KDI2FNjZ2OaDD4NmdJ37TP3FcJW7hZsZkOJ3gH
	2rm8bp0qoxmPA+oacmQkG2FJkiDAa6FT3qsHeRWE2sIdArEqoByh2jdIx7RDYeGlPMmsTnx5pnvzK
	C8ZnI6mw2vZpMGefQreQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Ezy-0008CP-FG; Sun, 16 Feb 2020 08:09:54 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Ezt-0008BU-Uu
 for linux-nvme@lists.infradead.org; Sun, 16 Feb 2020 08:09:51 +0000
Received: by mail-qt1-x841.google.com with SMTP id d9so9996731qte.12
 for <linux-nvme@lists.infradead.org>; Sun, 16 Feb 2020 00:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dNEzfTwUBmfbDmP8jHrIogG2oGgC1+4D3raZbBbSc2I=;
 b=VmKAFLhpDtAwHFCSjp+NzMIgHyhm7krjkidskFg0N+Fgdz3R8JDO3b8ne9kX2NFKY+
 N/GybcS2uUJYFLbORG6aDUumIctsLO+Be5ocFLSryqNoTi+9rDFflc5gpxK+RKw1+Io/
 n88bkYbb9GtMZ/vk5gE20Oue9ZjRBfLFFDCNBLu+HP1A2TycZn6CtUMlARKRH4vGlG4M
 ig34rD5d25IBzbXpRYhrTD01cJRhTk9nw4VwW4ldj26nRlASBkqDb3QHKjwIJg6/eOCD
 MMD6AR29nHG9e3OxFlZGf9E7wRVQhM5ujrZu534Vpv+52f9/1EdXj4e0dwx5Bp2ei4oZ
 JmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dNEzfTwUBmfbDmP8jHrIogG2oGgC1+4D3raZbBbSc2I=;
 b=VZ5kiZcFHL5XBqe7lh1s4TXAxHWRTZcBilwS6C9e69WachFxwrc8ssMh05hYlQu21q
 RP+7DnhY13Z2K79yqqTCKSlDu72oDf9Ikrnid/cEopgkWXwHgR4MR0ar2ZZYhfwSVJYc
 sB9exBHznYx65Cwa1nK4tBZNwjoNuX6Wt0Gexe9LN7URyqvRGvCox/pJYpYee/KM+zyV
 39o+c/YXEPc1DL1O7mHl4M8j6hvsHJpIUySl9yEZAsEtvfOnQBlh43OQOUmDEqm8Kt1H
 gfhNluqybPVGU+wogFw0DBlpSYaaYcifKtJyXI/xGegfmvtOS7eOtvWfwUNjxMi9ZlHg
 JbTg==
X-Gm-Message-State: APjAAAVb3hHuyGxR1Lr3LlztOg3gh4Md5vLHOA9ohPf2e7/7dNFgZP2c
 hC8x7nEmP94P/aSCrifSPJ6S7EA39TWXfmDViZs=
X-Google-Smtp-Source: APXvYqyWsEgZR3nj4ltlF/cwwuK/9RC88Bxi124aJCUSlJQqix+GJMRtc5vW2gcs32HrxaV4C+AM8gxZqKNu36C+0WQ=
X-Received: by 2002:ac8:47cc:: with SMTP id d12mr9206563qtr.246.1581840585855; 
 Sun, 16 Feb 2020 00:09:45 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580786525.git.zhangweiping@didiglobal.com>
 <20200204154200.GA5831@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20200204154200.GA5831@redsun51.ssa.fujisawa.hgst.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Sun, 16 Feb 2020 16:09:34 +0800
Message-ID: <CAA70yB5qAj8YnNiPVD5zmPrrTr0A0F3v2cC6t2S1Fb0kiECLfw@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and nvme
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_000950_024321_82582078 
X-CRM114-Status: GOOD (  30.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zwp10758[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zwp10758[at]gmail.com]
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Minwoo Im <minwoo.im.dev@gmail.com>,
 cgroups@vger.kernel.org, Tejun Heo <tj@kernel.org>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

S2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPiDkuo4yMDIw5bm0MuaciDTml6Xlkajkuowg
5LiL5Y2IMTE6NDLlhpnpgZPvvJoKPgo+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDExOjMwOjQ1
QU0gKzA4MDAsIFdlaXBpbmcgWmhhbmcgd3JvdGU6Cj4gPiBUaGlzIHNlcmllcyB0cnkgdG8gYWRk
IFdlaWdodGVkIFJvdW5kIFJvYmluIGZvciBibG9jayBjZ3JvdXAgYW5kIG52bWUKPiA+IGRyaXZl
ci4gV2hlbiBtdWx0aXBsZSBjb250YWluZXJzIHNoYXJlIGEgc2luZ2xlIG52bWUgZGV2aWNlLCB3
ZSB3YW50Cj4gPiB0byBwcm90ZWN0IElPIGNyaXRpY2FsIGNvbnRhaW5lciBmcm9tIG5vdCBiZSBp
bnRlcmZlcm5jZWQgYnkgb3RoZXIKPiA+IGNvbnRhaW5lcnMuIFdlIGFkZCBibGtpby53cnIgaW50
ZXJmYWNlIHRvIHVzZXIgdG8gY29udHJvbCB0aGVpciBJTwo+ID4gcHJpb3JpdHkuIFRoZSBibGtp
by53cnIgYWNjZXB0IGZpdmUgbGV2ZWwgcHJpb3JpdGllcywgd2hpY2ggY29udGFpbnMKPiA+ICJ1
cmdlbnQiLCAiaGlnaCIsICJtZWRpdW0iLCAibG93IiBhbmQgIm5vbmUiLCB0aGUgIm5vbmUiIGlz
IHVzZWQgZm9yCj4gPiBkaXNhYmxlIFdSUiBmb3IgdGhpcyBjZ3JvdXAuCj4KSGkgQnVzaCwKCj4g
VGhlIE5WTWUgcHJvdG9jb2wgcmVhbGx5IGRvZXNuJ3QgZGVmaW5lIFdSUiB0byBiZSBhIG1lY2hh
bmlzbSB0byBtaXRpZ2F0ZQo+IGludGVyZmVyZW5jZSwgdGhvdWdoLiBJdCBkZWZpbmVzIGNyZWRp
dHMgYW1vbmcgdGhlIHdlaWdodGVkIHF1ZXVlcwo+IG9ubHkgZm9yIGNvbW1hbmQgZmV0Y2hpbmcs
IGFuZCBhbiB1cmdlbnQgc3RyaWN0IHByaW9yaXR5IGNsYXNzIHRoYXQKPiBzdGFydmVzIHRoZSBy
ZXN0LiBJdCBoYXMgbm90aGluZyB0byBkbyB3aXRoIGhvdyB0aGUgY29udHJvbGxlciBzaG91bGQK
PiBwcmlvcml0aXplIGNvbXBsZXRpb24gb2YgdGhvc2UgY29tbWFuZHMsIGV2ZW4gaWYgaXQgbWF5
IGJlIHJlYXNvbmFibGUgdG8KPiBhc3N1bWUgaW5mbHVlbmNpbmcgd2hlbiB0aGUgY29tbWFuZCBp
cyBmZXRjaGVkIHNob3VsZCBhZmZlY3QgaXRzCj4gY29tcGxldGlvbi4KPgpUaGFua3MgeW91ciBm
ZWVkYmFjaywgdGhlIGZpbyB0ZXN0IHJlc3VsdCBvbiBXUlIgc2hvd3MgdGhhdCwgdGhlIGhpZ2gt
d3JyLWZpbwpnZXQgbW9yZSBiYW5kd2lkdGgvaW9wcyBhbmQgbG93IGxhdGVuY3kuIEkgdGhpbmsg
aXQncyBhIGdvb2QgZmVhdHVyZQpmb3IgdGhlIGNhc2UKdGhhdCBydW4gbXVsdGlwbGUgd29ya2xv
YWQgd2l0aCBkaWZmZXJlbnQgcHJpb3JpdHksIGVzcGVjaWFsbHkgZm9yCmNvbnRhaW5lciBjb2xv
Y2F0aW9uLgoKPiBPbiB0aGUgIndlaWdodGVkIiBzdHJpY3QgcHJpb3JpdHksIHRoZXJlJ3Mgbm90
aGluZyBzZXBhcmF0aW5nICJoaWdoIgo+IGZyb20gImxvdyIgb3RoZXIgdGhhbiB0aGUgbmFtZTog
dGhlICJzZXQgZmVhdHVyZXMiIGNyZWRpdCBhc3NpZ25tZW50Cj4gY2FuIGludmVydCB3aGljaCBx
dWV1ZXMgaGF2ZSBoaWdoZXIgY29tbWFuZCBmZXRjaCByYXRlcyBzdWNoIHRoYXQgdGhlCj4gImxv
dyIgaXMgZmF2b3VyZWQgb3ZlciB0aGUgImhpZ2giLgo+CklmIHRoZXJlIGlzIG5vIGxpbWl0YXRp
b24gaW4gdGhlIGhhcmR3YXJlIGNvbnRyb2xsZXIsIHdlIGNhbiBhZGQgbW9yZQpjaGVja2luZyBp
bgoic2V0IGZlYXR1cmUgY29tbWFuZCIuIEkgdGhpbmsgbW9zdGx5IHBlb3BsZSB3b24ndCBnaXZl
ICJsb3ciIG1vcmUKY3JlZGl0cyB0aGFuICJoaWdoIiwKaXQgcmVhbGx5IGRvZXMgbm90IG1ha2Ug
c2Vuc2UuCgo+IFRoZXJlJ3Mgbm8gcHJvdGVjdGlvbiBhZ2FpbnN0IHRoZSAidXJnZW50IiBjbGFz
cyBzdGFydmluZyBvdGhlcnM6IG5vcm1hbAo+IElPIHdpbGwgdGltZW91dCBhbmQgdHJpZ2dlciBy
ZXBlYXRlZCBjb250cm9sbGVyIHJlc2V0cywgd2hpbGUgcG9sbGVkIElPCj4gd2lsbCBjb25zdW1l
IDEwMCUgb2YgQ1BVIGN5Y2xlcyB3aXRob3V0IG1ha2luZyBhbnkgcHJvZ3Jlc3MgaWYgd2UgbWFr
ZQo+IHRoaXMgdHlwZSBvZiBxdWV1ZSBhdmFpbGFibGUgd2l0aG91dCBhbnkgYWRkaXRpb25hbCBj
b2RlIHRvIGVuc3VyZSB0aGUKPiBob3N0IGJlaGF2ZXMuLgo+CkkgdGhpbmsgd2UgY2FuIGp1c3Qg
ZGlzYWJsZSBpdCBpbiB0aGUgc29mdHdhcmUgbGF5ZXIgLCBhY3R1YWxseSwgSSBoYXZlIG5vIHJl
YWwKYXBwbGljYXRpb24gbmVlZCB0aGlzLgoKPiBPbiB0aGUgZHJpdmVyIGltcGxlbWVudGF0aW9u
LCB0aGUgbnVtYmVyIG9mIG1vZHVsZSBwYXJhbWV0ZXJzIGJlaW5nCj4gYWRkZWQgaGVyZSBpcyBw
cm9ibGVtYXRpYy4gV2UgYWxyZWFkeSBoYXZlIDIgc3BlY2lhbCBjbGFzc2VzIG9mIHF1ZXVlcywK
PiBhbmQgZGVmaW5pbmcgdGhpcyBhdCB0aGUgbW9kdWxlIGxldmVsIGlzIGNvbnNpZGVyZWQgdG9v
IGNvYXJzZSB3aGVuCj4gdGhlIHN5c3RlbSBoYXMgZGlmZmVyZW50IGRldmljZXMgb24gb3Bwb3Np
dGUgZW5kcyBvZiB0aGUgY2FwYWJpbGl0eQo+IHNwZWN0cnVtLiBGb3IgZXhhbXBsZSwgdXNlcnMg
d2FudCBwb2xsZWQgcXVldWVzIGZvciB0aGUgZmFzdCBkZXZpY2VzLAo+IGFuZCBub25lIGZvciB0
aGUgc2xvd2VyIHRpZXIuIFdlIGp1c3QgZG9uJ3QgaGF2ZSBhIGdvb2QgbWVjaGFuaXNtIHRvCj4g
ZGVmaW5lIHBlci1jb250cm9sbGVyIHJlc291cmNlcywgYW5kIG1vcmUgcXVldWUgY2xhc3NlcyB3
aWxsIG1ha2UgdGhpcwo+IHByb2JsZW0gd29yc2UuCj4KV2UgY2FuIGFkZCBhIG5ldyAic3RyaW5n
IiBtb2R1bGUgcGFyYW1ldGVyLCB3aGljaCBjb250YWlucyBhIG1vZGVsIG51bWJlciwKaW4gbW9z
dCBjYXNlcywgdGhlIHNhdmUgcHJvZHVjdCB3aXRoIGEgY29tbW9uIHByZWZpeCBtb2RlbCBudW1i
ZXIsIHNvCmluIHRoaXMgd2F5Cm52bWUgY2FuIGRpc3Rpbmd1aXNoIHRoZSBkaWZmZXJlbnQgcGVy
Zm9ybWFuY2UgZGV2aWNlcyhoaWduIG9yIGxvdyBlbmQpLgpCZWZvcmUgY3JlYXRlIGlvIHF1ZXVl
LCBudm1lIGRyaXZlciBjYW4gZ2V0IHRoZSBkZXZpY2UncyBNb2RlbCBudW1iZXIoNDAgQnl0ZXMp
LAp0aGVuIG52bWUgZHJpdmVyIGNhbiBjb21wYXJlIGRldmljZSdzIG1vZGVsIG51bWJlciB3aXRo
IG1vZHVsZSBwYXJhbWV0ZXIsIHRvCmRlY2lkZSBob3cgbWFueSBpbyBxdWV1ZXMgZm9yIGVhY2gg
ZGlzazsKCi8qIGlmIG1vZGVsX251bWJlciBpcyBNT0RFTF9BTlksIHRoZXNlIHBhcmFtZXRlcnMg
d2lsbCBiZSBhcHBsaWVkIHRvCmFsbCBudm1lIGRldmljZXMuICovCmNoYXIgZGV2X2lvX3F1ZXVl
c1sxMDI0XSA9ICJtb2RlbF9udW1iZXI9TU9ERUxfQU5ZLApwb2xsPTAscmVhZD0wLHdycl9sb3c9
MCx3cnJfbWVkaXVtPTAsd3JyX2hpZ2g9MCx3cnJfdXJnZW50PTAiOwovKiB0aGVzZSBwYXJhbXRl
cnMgb25seSBhZmZlY3QgbnZtZSBkaXNrIHdob3NlIG1vZGVsIG51bWJlciBpcyAiWFhYIiAqLwpj
aGFyIGRldl9pb19xdWV1ZXNbMTAyNF0gPSAibW9kZWxfbnVtYmVyPVhYWCwKcG9sbD0xLHJlYWQ9
Mix3cnJfbG93PTMsd3JyX21lZGl1bT00LHdycl9oaWdoPTUsd3JyX3VyZ2VudD0wOyI7CgpzdHJ1
Y3QgZGV2X2lvX3F1ZXVlcyB7CiAgICAgICAgY2hhciBtb2RlbF9udW1iZXJbNDBdOwogICAgICAg
IHVuc2lnbmVkIGludCBwb2xsOwogICAgICAgIHVuc2dpbmVkIGludCByZWFkOwogICAgICAgIHVu
c2lnbmVkIGludCB3cnJfbG93OwogICAgICAgIHVuc2lnbmVkIGludCB3cnJfbWVkaXVtOwogICAg
ICAgIHVuc2lnbmVkIGludCB3cnJfaGlnaDsKICAgICAgICB1bnNpZ25lZCBpbnQgd3JyX3VyZ2Vu
dDsKfTsKCldlIGNhbiB1c2UgdGhlc2UgdHdvIHZhcmlhYmxlIHRvIHN0b3JlIGlvIHF1ZXVlIGNv
bmZpZ3VyYXRpb25zOgoKLyogZGVmYXVsdCB2YWx1ZXMgZm9yIHRoZSBhbGwgZGlzaywgZXhjZXB0
IHdob3NlIG1vZGVsIG51bWJlciBpcyBub3QKaW4gaW9fcXVldWVzX2NmZyAqLwpzdHJ1Y3QgZGV2
X2lvX3F1ZXVlcyBpb19xdWV1ZXNfZGVmID0ge307CgovKiB1c2VyIGRlZmluZWQgdmFsdWVzIGZv
ciBhIHNwZWNpZmljIG1vZGVsIG51bWJlciAqLwpzdHJ1Y3QgZGV2X2lvX3F1ZXVlcyBpb19xdWV1
ZXNfY2ZnID0ge307CgpJZiB3ZSBuZWVkIG11bHRpcGxlIGNvbmZpZ3VyYXRpb25zKCA+IDIpLCB3
ZSBjYW4gYWxzbyBleHRlbmQKZGV2X2lvX3F1ZXVlcyB0byBzdXBwb3J0IGl0LgoKPiBPbiB0aGUg
YmxrLW1xIHNpZGUsIHRoaXMgaW1wbGVtZW50YXRpb24gZG9lc24ndCB3b3JrIHdpdGggdGhlIElP
Cj4gc2NoZWR1bGVycy4gSWYgb25lIGlzIGluIHVzZSwgcmVxdWVzdHMgbWF5IGJlIHJlb3JkZXJl
ZCBzdWNoIHRoYXQgYQo+IHJlcXVlc3Qgb24geW91ciBoaWdoLXByaW9yaXR5IGhjdHggbWF5IGJl
IGRpc3BhdGNoZWQgbGF0ZXIgdGhhbiBtb3JlCj4gcmVjZW50IG9uZXMgYXNzb2NpYXRlZCB3aXRo
IGxvd2VyIHByaW9yaXR5LiBJIGRvbid0IHRoaW5rIHRoYXQncyB3aGF0Cj4geW91J2Qgd2FudCB0
byBoYXBwZW4sIHNvIHByaW9yaXR5IHNob3VsZCBiZSBjb25zaWRlcmVkIHdpdGggc2NoZWR1bGVy
cwo+IHRvby4KPgpDdXJyZW50bHksIG52bWUgZG9lcyBub3QgdXNlIGlvIHNjaGVkdWxlciBieSBk
ZWZhbHV0LCBpZiB1c2VyIHdhbnQgdG8gbWFrZQp3cnIgY29tcGF0aWJsZSB3aXRoIGlvIHNjaGVk
dWxlciwgd2UgY2FuIGFkZCBvdGhlciBwYXRjaGVzIHRvIGhhbmRsZSB0aGlzLgoKPiBCdXQgcmVh
bGx5LCB0aG91Z2gsIE5WTWUncyBXUlIgaXMgdG9vIGhlYXZ5IHdlaWdodCBhbmQgZGlmZmljdWx0
IHRvIHVzZS4KPiBUaGUgdGVjaGluY2FsIHdvcmsgZ3JvdXAgY2FuIGNvbWUgdXAgd2l0aCBzb21l
dGhpbmcgYmV0dGVyLCBidXQgaXQgbG9va3MKPiBsaWtlIHRoZXkndmUgbG9zdCBpbnRlcmVzdCBp
biBUUEFSIDQwMTEgKG5vIGRpc2N1c3Npb24gaW4gMiB5ZWFycywgYWZhaWNzKS4KCkZvciB0aGUg
dGVzdCByZXN1bHQsIEkgdGhpbmsgaXQncyBhIHVzZWZ1bCBmZWF0dXJlLgpJdCByZWFsbHkgZ2l2
ZXMgaGlnaCBwcmlvcml0eSBhcHBsaWNhdGlvbnMgaGlnaCBpb3BzL2JhbmR3aXRoIGFuZCBsb3cg
bGF0ZW5jeSwKYW5kIGl0IG1ha2VzIHNvZnR3YXJlIHZlcnkgdGhpbiBhbmQgc2ltcGxlLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
