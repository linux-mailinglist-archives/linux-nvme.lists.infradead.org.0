Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7262F03A
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/SebnSd5TuyfSQhid4eL0lQidP96/f83VT0Jq6xnfak=; b=pYb
	Og+hqq++w2sdzlSZSdcUCDJnuJfSFVnzEuqksqcHaWIqyGzlyvJeRaLAefAB/5UzANtNYmqSvKZck
	PSUWmJlHejejKtVzZVIGgxxOezOE5bqaf9OCpKilaVd90Xup+GX//vgG00MWP9lXxSayHZxQWI9/C
	SZxm0FbTWCd2lsXkMV3cpx4hjwAt+MUoHieNFzZEKHmiSLH03sgU5qzZ/pA69vSWmt9PqDhtxfs9a
	pDTN66/M9lqIAY/11ekgjL9EpAo9nlg1Pmu+8dvweH90yRZPuhSgEv43pNtxFaOP5enCLMANe2RZs
	Z8Y0w1ljcyKh/t3ph0UNtQSEW+/S44w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLuZ-00005g-Ne; Tue, 30 Apr 2019 06:06:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu1-0007x1-Oo
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 42460AF38;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 0/9] Update tests for qemu
Date: Tue, 30 Apr 2019 08:05:45 +0200
Message-Id: <20190430060554.24368-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230606_000922_8F1CBBAC 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

here's an update to the nvme-cli test suite, to bring it more in
line with the spec and to allow it to run under qemu.
The first part fixes up various tests to check if the functionality
is implemented before running the test.
The second part is to make it to run under the quirky qemu NVMe
emulation, which chose not to implement some mandatory features
and log pages. But as this is qemu we sure can update the emulation,
but that won't help us for existing platforms.
So there really is no good way except for masking it out in the
tests.

As usual, comments and reviews are welcome

Hannes Reinecke (9):
  tests/nvme_writezeros_test.py: check if write zeroes is supported
  tests/nvme_writeuncor_test.py: check if write uncorrectable is
    supported
  tests/nvme_compare_test.py: check if compare is supported
  tests: ignore log tests for Qemu
  tests/nvme_text.py: add test for namespace management
  tests/nvme_attach_detach_ns_test.py: skip if namespace mgmt is not
    supported
  tests/nvme_create_max_ns_test.py: skip if namespace mgmt is not
    supported
  tests/nvme_get_features_test.py: skip features for Qemu
  tests/nvme_format_test.py: skip test if namespace management is not
    supported

 tests/nvme_attach_detach_ns_test.py |  13 ++--
 tests/nvme_compare_test.py          |   7 ++-
 tests/nvme_create_max_ns_test.py    |  10 ++-
 tests/nvme_error_log_test.py        |   3 +-
 tests/nvme_format_test.py           |  10 ++-
 tests/nvme_get_features_test.py     |   2 +
 tests/nvme_smart_log_test.py        |   5 +-
 tests/nvme_test.py                  | 119 ++++++++++++++++++++++++++++++++++++
 tests/nvme_writeuncor_test.py       |  11 ++--
 tests/nvme_writezeros_test.py       |  15 ++---
 10 files changed, 167 insertions(+), 28 deletions(-)

-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
