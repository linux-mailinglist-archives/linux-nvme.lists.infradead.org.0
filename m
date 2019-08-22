Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D679A235
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 23:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jEL1eiNW03666EQoQslAKVPixGwHdea7PRU8XdYLRdA=; b=rA+ScqHkYFyj5p
	hc1I6VhfalG3Ud4yz52h1PuLum1DpZ0+x6p0Gi8A/TIoqpnhd0T4JVIfXry3Bsx0ErdMKpk/IUlxj
	64Eu8+7zRoVseNaUCOyqgnnhmTUGii7IpBMU1Ea4dYXFqX0sIKnkTouaTNlV4kAgeMD+O3La9nH+C
	18FzndZcvqfsBqw5JhtyF4DiqCCPggni8ZIsMhx94WNR5K+ekOl/2RAY3EuE9AXdC8WCStKyjPed+
	MmBcQ17utgx4cNYtx3oWHO2h33zEYcko9evybSBxr4zoPpiOrbb+XLPmZbdvrD0p7+dZZ2Aol3bJL
	8vycT6QQK1fdkIeJD6kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ugH-0004WV-Uv; Thu, 22 Aug 2019 21:31:41 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ugD-0004WJ-2b; Thu, 22 Aug 2019 21:31:37 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH] nvme: fix compilation error
Date: Thu, 22 Aug 2019 14:31:32 -0700
Message-Id: <20190822213132.32762-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Z2NjIDcuNC4wLgoKbnZtZS5jOiBJbiBmdW5jdGlvbiDigJhwcmludF9yZWxhdGl2ZXPigJk6Cm52
bWUuYzozNTA1OjM6IGVycm9yOiBpZ25vcmluZyByZXR1cm4gdmFsdWUgb2Yg4oCYYXNwcmludGbi
gJksIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIHdhcm5fdW51c2VkX3Jlc3VsdCBbLVdlcnJvcj11
bnVzZWQtcmVzdWx0XQogICBhc3ByaW50ZigmcGF0aCwgIi9zeXMvY2xhc3MvbnZtZS8lcyIsIGRl
dmljZW5hbWUpOwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+Cm52bWUuYzozNTA5OjM6IGVycm9yOiBpZ25vcmluZyByZXR1cm4gdmFsdWUgb2Yg4oCY
YXNwcmludGbigJksIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIHdhcm5fdW51c2VkX3Jlc3VsdCBb
LVdlcnJvcj11bnVzZWQtcmVzdWx0XQogICBhc3ByaW50ZigmcGF0aCwgIi9zeXMvYmxvY2svJXMv
ZGV2aWNlIiwgZGV2aWNlbmFtZSk7CiAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVy
cm9ycwpNYWtlZmlsZTo1NzogcmVjaXBlIGZvciB0YXJnZXQgJ252bWUnIGZhaWxlZAptYWtlOiAq
KiogW252bWVdIEVycm9yIDEKClNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3Jp
bWJlcmcubWU+Ci0tLQogbnZtZS5jIHwgMTIgKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9udm1lLmMgYi9u
dm1lLmMKaW5kZXggNDljNTdlZTE4YjgxLi44MjVmYmQ4NzI5MjkgMTAwNjQ0Ci0tLSBhL252bWUu
YworKysgYi9udm1lLmMKQEAgLTM1MDIsMTEgKzM1MDIsMTkgQEAgc3RhdGljIHZvaWQgcHJpbnRf
cmVsYXRpdmVzKCkKIAlyZXQgPSBzc2NhbmYoZGV2aWNlbmFtZSwgIm52bWUlZG4lZCIsICZpZCwg
Jm5zaWQpOwogCXN3aXRjaCAocmV0KSB7CiAJY2FzZSAxOgotCQlhc3ByaW50ZigmcGF0aCwgIi9z
eXMvY2xhc3MvbnZtZS8lcyIsIGRldmljZW5hbWUpOworCQlyZXQgPSBhc3ByaW50ZigmcGF0aCwg
Ii9zeXMvY2xhc3MvbnZtZS8lcyIsIGRldmljZW5hbWUpOworCQlpZiAocmV0IDwgMCkgeworCQkJ
cGVycm9yKCJhc3ByaW50ZiIpOworCQkJcmV0dXJuOworCQl9CiAJCWJsb2NrID0gZmFsc2U7CiAJ
CWJyZWFrOwogCWNhc2UgMjoKLQkJYXNwcmludGYoJnBhdGgsICIvc3lzL2Jsb2NrLyVzL2Rldmlj
ZSIsIGRldmljZW5hbWUpOworCQlyZXQgPSBhc3ByaW50ZigmcGF0aCwgIi9zeXMvYmxvY2svJXMv
ZGV2aWNlIiwgZGV2aWNlbmFtZSk7CisJCWlmIChyZXQgPCAwKSB7CisJCQlwZXJyb3IoImFzcHJp
bnRmIik7CisJCQlyZXR1cm47CisJCX0KIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJcmV0dXJuOwot
LSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
