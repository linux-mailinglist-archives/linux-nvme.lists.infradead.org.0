Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7F71A947
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rwVQcY7wNtfKh7nkEi8jWPR2LMrBI0rqxes0Ivf2Mzc=; b=K9G
	wpm/Qj2UBSOBdbEkgRTqW4kmctTLS735vYs6XXad1VH+OIJaRkVQ/RnDbagpK53ExuvxYkcDrlR/e
	n0BgSwmMBhApU5PTMXo1brGXk9ow3Zqz416aEOIyWCcx+aPhPe0k3H5tGW39u5vm2X4fuAbprJYIb
	S/P3DgY4H/UEpb5uBOEBLML/UxSooYtNlK8pQlBog/+S6OZS8VNm599HTNeCNPL347t0LJjQ83og2
	/nz5L/iqknaHaGufFbMEJAz5mW2anigxRRuW6VW2pDnz9hVSRWeW1GQMsd/M+9S1l9dXjqsagnyXl
	nhubMmepdUO0DZE/0TQqf7AjXBGwrkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXoH-00023D-55; Sat, 11 May 2019 19:37:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXoC-00022t-5u
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:37:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so4401244plm.6
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 12:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=t1OwjzBFFkwX5qYkIi2yqBjCZVDNN9vGyDh4hYp+rdQ=;
 b=SuPa8x3bxywC/HKcrprKgc3hzfQEkOFN+I/fImS25KWL4aI/bXfTfrN921i/VIkH90
 2FOYPnwSht4h8Hy0Y+qR3nMuZSjl4KzG0yWtoyZaHsikXbI2JLQqwcAK08cWLRguCrQ+
 BpOMdhn8b95MdE+SNeUA81bv+kc3/4Ul26QzmHEoIUMFdpUQU89Qk+ZL66nMVwDusMCB
 8x7cq+RqkrGPtoZN4MLHgF82sx0XW24qR+JzDawXD6MsoAL6n/bqVqCDankKNtL2XhDQ
 +eliggBU0tSuefSg6Vpxl2xt2Gv9MIp92NEQRktp7NzRMbjqouf2ciyxPmlmUMSdd3Pf
 MUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=t1OwjzBFFkwX5qYkIi2yqBjCZVDNN9vGyDh4hYp+rdQ=;
 b=ByjM8Nbl3hDHqpq1nXjAMcSsrcOE1TSTV5jRbf7surSBib0XUkboqnmkQUymDDCJPI
 xqeM287pSUCgk6de/Q8KtylmzR4EZ/S1Rorj327Ro02M04hm57zL+tLMpFtxZPe2mXLF
 /LkzLvfjalHjiEl+pK6dBMEwH6f32Ts6a03kBj+HDuEjqYwbMqJNx7S+5trEd+WPZIZe
 oa41L/heOv5dCzWZgTeFEtqqkNpABo+BeXsEmbrdEuUlbxi7ihkRO58IhrO//SxUaPHC
 MkuPolUmjUZAaG20RTMog51RUIbUqqwqZI0H0tmeUl9bYk2JG5cQog8cRVhTxO1k9HAT
 QPQg==
X-Gm-Message-State: APjAAAVM83C/CSIMfjZoRy/gtdNlVWz5kOTNv5B/HI6fZHVjKibgUjNg
 TV5+/cJ7JAd3uyy0O76EJNc0UA8vGbY=
X-Google-Smtp-Source: APXvYqyBnFOCuP9QfoDy1k3MmW4PtZ1qYJY6QhK5LFbzbj0kt4X6EJb8G5rNcshYz5bISxzdlu/NeA==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr21776310plm.134.1557603442777; 
 Sat, 11 May 2019 12:37:22 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a9sm10878883pgw.72.2019.05.11.12.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:37:21 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RFC 0/4] nvme-cli: Introduce nvme-status mapping with errno
Date: Sun, 12 May 2019 04:37:09 +0900
Message-Id: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_123724_269536_0F89BE23 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This patchset introduces nvme-status module to manage mapping
relationships between nvme error status and errno.  It cannot be
directly mapped in 1:1, but we can figure out what kind of errors
happended by the return value of nvme-cli.

NVMe status fields are 16bits to indicate, but UNIX return value from
main() will be parsed in 8bits so that we need to do something about
return value to indicate nvme error status.

Please review.
Thanks,

Minwoo Im (4):
  nvme.h: Fix typos in status code values
  nvme-status: Introduce nvme status module to map errno
  nvme: Return errno mapped for nvme error status
  fabrics: Return errno mapped for fabrics error status

 Makefile      |   3 +-
 fabrics.c     |  24 +++++--
 linux/nvme.h  |  10 ++-
 nvme-print.c  |   4 +-
 nvme-status.c | 127 +++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 ++++
 nvme.c        | 180 ++++++++++++++++++++++++++++++--------------------
 7 files changed, 283 insertions(+), 79 deletions(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
