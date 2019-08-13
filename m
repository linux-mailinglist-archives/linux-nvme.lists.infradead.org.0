Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A948BD52
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 17:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u/fZ89T9lYSe3qmu6IATwlKDLel2rJwuIZMNzG7Bpk=; b=QfWn0ziwR3Fgy2
	CyayhPFyXb65ZQwlIyPGP/oa5bZ0wIRYtQuz3jDGcBApyV1whVC5gzrnCnhg30yn8WF64ebbWaAD9
	7mrvwYKnmb1PCVEhnEkbY+d3UomHNIs2afzoEvNcTB85OXFJXY9NdtPRcGrTv8DpTcAteI8lQKIH2
	C5XNsyDc9FAZQHXesybDVj4ubOIj4YCV7T2G0/Ey0jM5+zi7Jl0NCSpRvxA/P+VQ147UXjj5+XTQw
	h6p14Wp6CLkz/Y752VuoEK6RCT06A8x1dTS4prJW1tUUTl64C9Y61H5XQC4ssU9fAFChNVcxIpl31
	FikEdYwgl8/tiWKPKWgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYs3-0000KI-Mq; Tue, 13 Aug 2019 15:37:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYro-0000Ji-VC
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 15:37:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id b24so1309384pfp.1
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 08:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BKzlr/8ZEUpY8BBXQWePFJGE1otrxYkP+Vuhs/bO5lk=;
 b=NanX2O0WwgW2LdKOSmPZ1jf49xIfcawK8Rp0k01YwxB538jOwooXLq0K46gaaSPC+/
 4ZQ2asX7n8uLEaBWBBas7ZrCy7/9qP7W48MTZK6+yp09Poss2MZqj4rlhxjzwMCJc4Pu
 pB3gTMwZWlPU5zfate1SRiUBziFbW0IFTUJcYlix6Or77e9B2U9MdWcj3k/kXy/voL9b
 Hyfw1Uzh8RrGdhUuZqSEnhmDNlUobZujp1JDuUN/8e5J3TLxmDzNMfatkdW+j4aGZZUU
 4+bjLs3aYvWRqMedzkDtBx/+CSUS4A8QIZd5o5FSRjLrS+vtUBUDMg9830Dw1Zm5aUNc
 N7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BKzlr/8ZEUpY8BBXQWePFJGE1otrxYkP+Vuhs/bO5lk=;
 b=bGR55PUXGQajffvRWg1UPRo64WNM1iueOnsphQrvKYHmAt6gbnEQ1RaCfHwby+iSDB
 zeqRqmKsAXio/7v2g8ctFI1pBYlxUADN/0mgwT+ufdFu7k7nwobH5JFap4KYad20/oXB
 eDnXIIGg3DZjqHCuQXYxMWY6572zrOZfh86rwsZ4NGaRIi+nDYBb14rb1fK8FhSlKHWI
 kb2IC4FRL+olDtwZ0pSG5GkJ8tSLXtA4CvTeVUrgf8pmg2ktP1l9ScuNaEJ1bZ6R3M/5
 2TWoUOFsUUM5MGkHZJKJAqiUQzzUTBOgdla/FfQoPCm2d7fzQlM30TD8mlAn7nZTBEj7
 2IiQ==
X-Gm-Message-State: APjAAAVXUeuK4uI9v6NW/Clog63KXN/0HU51JsXPettZG1UsBREre9Qg
 9OH8AcVDeS84gcj2UFnGoSCAWvg6oiarAyKaE2k=
X-Google-Smtp-Source: APXvYqw70FiuYzR/lI2fYZGp64z2lcEN9nuBmA0Z8Xffe3srfFfnqXy3pR38nE0v32vUhEGt5uzfln1w4UYeJKJEpYw=
X-Received: by 2002:aa7:8007:: with SMTP id j7mr41268115pfi.154.1565710663815; 
 Tue, 13 Aug 2019 08:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
 <1565459703-30513-6-git-send-email-akinobu.mita@gmail.com>
 <e1ece602-b413-b391-c7c3-34a8e46254c4@gmail.com>
In-Reply-To: <e1ece602-b413-b391-c7c3-34a8e46254c4@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 14 Aug 2019 00:37:32 +0900
Message-ID: <CAC5umyjjdi8QCw+Bi8hy+F6b9g0o8sqot9eWistW81yaBjAtDw@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] ledtrig-blk: add interface to stop and restart
 polling disk stats
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_083745_029320_A5351BD0 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

MjAxOeW5tDjmnIgxM+aXpSjngaspIDQ6MzEgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gSGkgQWtpbm9idSwKPgo+IEkgZG9uJ3Qgc2VlIGFueSB2aXRh
bCByZWFzb24gdG8ga2VlcCB0aGlzIGNoYW5nZSBzZXBhcmF0ZWx5Lgo+IFdlJ3JlIGludHJvZHVj
aW5nIG5ldyB0cmlnZ2VyLCBzbyBwbGVhc2UganVzdCBzcXVhc2ggaXQgd2l0aAo+IHRoZSBwYXRj
aCA0LzYuCgpPSy4gIEknbGwgdGFrZSBjYXJlIG9mIHJlbmFtaW5nIGxlZCB0byBsZWRfdHJpZyBp
biB0aGUgcGF0Y2ggMy82LCB0b28uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
