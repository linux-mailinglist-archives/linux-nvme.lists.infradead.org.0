Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C411537C79
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 20:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fuHGaZqKEC7SGnEVtSAzYdEKcMkznzvZ/DwUpe7mZA4=; b=jmmLB7gZe6ukVd
	rYS5Np2AVybeVXw57HWOwG+qJRHnBFEzvEJMuZAEq2cZOV5XlV6oSEkWZnVWJpx25pNL94iT04J+s
	VTuoLII/mhhFIr60Jlk0dxyhKTHRM/JpS8FaVwHSEP5GPwAVMKxqYMaqLPcQ8EplSvyb5EdZOrDTr
	DFflQOTKN9w4nSmHBDMUp8QNBXenFN8GQhM6kwfXnMs/35na78tDl1HhuhPE02qXnhyurDY1yze4H
	Lusj5NFgJOfZNEGxM60tJ4zxrNhN++zNpOiCGSpzRztk453gfmYDfG7yYCIKQ/OehIeWq/1gltNT+
	RWYqI2awGa/8fgNosw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxPB-0005cz-FR; Thu, 06 Jun 2019 18:46:29 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxP7-0005ci-0J
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 18:46:26 +0000
Received: by mail-pf1-x431.google.com with SMTP id a23so2050599pff.4
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 11:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=4dp2O2+xLgfUkp0lI4NEgmVGZYdO4FByVjWKtylMXk0=;
 b=gnk1dQbHpXJNTjD5qU+MjPqOqqxSEdDnIImMFMPAP9ac8I3NqHzzDTiBuURwPxcIig
 8gNbsNKb4//ukcbU8Gs+8MHtrzulWs7JpJORVBkJnaZaUPMYHye+gLbYwD1R31iMHTHG
 HRbvZBLjOU0EmcEV4zDomVY8cEDbhaDKtXcbOwQ3x4gRouQQJjgjqqWGeVjkVWUHbgqt
 fiEnMTh140v9diMNgYAWZ7vwjPaAS0WdJpbto0ctL87f2adAlGfdMrNXqiQbSzVB4s93
 oUgfrz10GtNLAItQVybPBNC/hAT/5LGw87OwYC5GCTkESPGUbxSTj/LRzWAvBYZjUoUh
 umhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=4dp2O2+xLgfUkp0lI4NEgmVGZYdO4FByVjWKtylMXk0=;
 b=qZ2kmDvLbiHd3jlJ+3js9hu6hmxMR+K3VE17wc7pk/YcyUE4mKRd6DCwWDdT4NzvaK
 Lv6i2dNW4ntGHsqqHvVq0DL+BwraO6JEY1CwFs47dtcTMhFyQhLsxV0ft+EUFR1lH5SF
 xZ43xnRlzCFPT7GAlfqMVGXp7CaZ57kLBrbJNPVCKmzS5eKVlo79V2GgCwgYKmDsSV3n
 owSYtBrPR5C9fjSEPKxaPsYHF08zxUQoPvn05So8/JuTqnxJ/aE3L/ZcSJjIBC47M/w/
 TUcVSqBiSIgvjnSaCTWH59uHSN1Be21fuCsuWlLO6O+zG5wBotWkx0Mmb8e5bd1Mh8QH
 fGcw==
X-Gm-Message-State: APjAAAUm1i4HorBfciZ4i2S4jU9svGliOoW+QJPjHEW3B0YF1OQvI9S6
 +zdzisnphN9UYpHLMxVa4JAoU4Hi2Ik=
X-Google-Smtp-Source: APXvYqyqojYwVRA2QNs68T19Gap577TJJTd5GLZ5sRKsOUn/MUXGbcXWudqZ1b2SptpcPOzOwySVVg==
X-Received: by 2002:a63:f257:: with SMTP id d23mr4660676pgk.305.1559846783764; 
 Thu, 06 Jun 2019 11:46:23 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v39sm5150153pjb.3.2019.06.06.11.46.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 11:46:23 -0700 (PDT)
Date: Fri, 7 Jun 2019 03:46:20 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: nvme: build failure report for nvme_sync_queues()
Message-ID: <20190606184620.GA1676@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_114625_050416_D4FA7FC6 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgYWxsLAoKSSdkIGhhdmUgdG8gcmVwb3J0IGEgYnVpbGQgZmFpbHVyZSBkdWUgdG8gdGhlIGZv
bGxvd2luZyBjb21taXQ6CkNvbW1pdCBlN2FlNmQxZTdjNWYgKCJudm1lLXBjaTogVXNlIGhvc3Qg
bWFuYWdlZCBwb3dlciBzdGF0ZSBmb3Igc3VzcGVuZCIpCgpNZXNzYWdlOgpkcml2ZXJzL252bWUv
aG9zdC9wY2kuYzoyODc2OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlv
biDigJhudm1lX3N5bmNfcXVldWVz4oCZOyBkaWQgeW91IG1lYW4g4oCYbnZtZV9zdG9wX3F1ZXVl
c+KAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgbnZtZV9zeW5j
X3F1ZXVlcyhjdHJsKTsKICAgIF5+fn5+fn5+fn5+fn5+fn4KCklzIHRoZSBmb2xsb3dpbmcgcGF0
Y2ggYXBwbGllZCB0byB0aGlzIGJyYW5jaCA/CiAgW1BBVENIdjQgMS80XSBudm1lOiBTeW5jIHJl
cXVlc3QgcXVldWVzIG9uIHJlc2V0OgogIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVy
bWFpbC9saW51eC1udm1lLzIwMTgtSnVseS8wMTkxNjYuaHRtbAoKSWYgSSBtaXNzIHNvbWV0aGlu
ZyBoZXJlLCBwbGVhc2UgbGV0IG13IGtub3cuCgpUaGFua3MsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
