Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A661285
	for <lists+linux-nvme@lfdr.de>; Sat,  6 Jul 2019 19:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KUSSwzo3LVAT9nFSsHvu21araZcx6VvOox4zwFd6izQ=; b=QX5
	i7PzgYbc0EMsMVcUmh3YDmwya0wWUZ6vTqW3Wh7c0stlcxaQpHBSlRnhVwuJyWYGYS6xDnw+wn9RZ
	1Y+n3qL9dwoXnHD5ASnJNrkbCOh17RYpmcbyX1FRF4H9Tx/YimHQrqIU66RxT+PcjqyV34uI4FOBG
	zF8hUYQPc2BNCKHUmusf4EYOwvXS9N6ESd0VlSaENdP/ob8OZqtRUyqtkOokPdhBs5PNLcmTekFKF
	OFVbAPY84uo92G1Hyzdh079vaWIqHQViS1ZxsCeiCd2i4o8KxpIoN1CoZ9h97rJD2wKaMUTOPz7EZ
	eBgic78d50zMA5/hMWzDdSoZEgXBEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjoyC-0001BG-Gl; Sat, 06 Jul 2019 17:59:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjoxy-0001AM-Qg
 for linux-nvme@lists.infradead.org; Sat, 06 Jul 2019 17:59:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so5628338pgv.10
 for <linux-nvme@lists.infradead.org>; Sat, 06 Jul 2019 10:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2cGuSYY6mbXznH1xjP8nBUhy/VF4nuf7EL6OSy18Q/4=;
 b=qLvECEomhGFfCpbOlv758hJ9GpqNuJUBJkFum2+A+iQA+QKjunUINdzv7aKGAC/D/p
 gw5q1zEzKTETCJSe1DwXe9rXGxhyQl1ZerxmM0D4wMRBZh7I+V4jROrwA9yUg0gSDJma
 KMIsDT02ojOEw3anix4ZFQZ0QmI3c5qyvaZODpLhuODO1bDFhUA6eMPevM5i2PjIRxgQ
 +XbfyeLA7mZeqBcYiRkDztdsTLoX5y8ll6JTDxsPZP1ACxXzQciK5i6qNc3ZBOmJZ//D
 McuQQfGKES6yR50oEHGK8BCtjIiZz6Um7Ph1VF6QEAqloUlOIcSSdjdt+Ilm2ZY4ZpF/
 fwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2cGuSYY6mbXznH1xjP8nBUhy/VF4nuf7EL6OSy18Q/4=;
 b=VwV9svgh/HuxYZEZKmv9cMgIFgu+FyrYHt8zOCz/OLr5qtTvkZtFlmn8xH3ASDPR9g
 5MUI7hqK8mliOqLqrFcRiZ2ISFKUK+vVPoRd1Rz81sA9wBQDNsPMvUAoZuoQadKpfQil
 weXe3WZLRHIqAcX49fdlm3kqJEOyvfngRf+dE9sXvLihNihB8MoiLq4ABE2hLfOpNjsI
 HrLXn2ol0OL9vinj/tdiscKlCc3t7xqBTLzlwlHlnp5xmZ4lS0tBkjcEOlpKpSgLQ4H2
 VXQ1ib3Eih4jWC7rnRUKeup5Uw+j5wVDnfAyWXSl9a7lL+Zbh0ypvCg4JekRtipsMVo+
 uPKw==
X-Gm-Message-State: APjAAAXhOAxuCiZskY6nZTkXoPtgSbehMSodBxbPoeHoPbjv1V4Wj3ay
 3/KX3NCIGtjosddR38tzsQU=
X-Google-Smtp-Source: APXvYqwj1B2Y8tzvvWy8bVp8gUwudON4bJIp+MSF+TSzRtLMKVVGJttTBuIMekkDXP9fRgsguKxI1Q==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr13023090pjb.115.1562435957625; 
 Sat, 06 Jul 2019 10:59:17 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id h6sm11967528pfn.79.2019.07.06.10.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 06 Jul 2019 10:59:16 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] introduce LED block device activity trigger
Date: Sun,  7 Jul 2019 02:58:57 +0900
Message-Id: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_105918_890654_2ADF49C5 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Jens Axboe <axboe@kernel.dk>, Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This work is inspired by the recent report on linux-nvme mailing list.

disk-activity trigger not working for nvme disk:
http://lists.infradead.org/pipermail/linux-nvme/2019-July/025253.html

This LED block device activity trigger works with any block devices.

Akinobu Mita (2):
  leds: move declaration of led_stop_software_blink() to linux/leds.h
  block: introduce LED block device activity trigger

 block/Makefile        |   1 +
 block/blk-ledtrig.c   | 219 ++++++++++++++++++++++++++++++++++++++++++++++++++
 block/blk.h           |  13 +++
 block/genhd.c         |   2 +
 drivers/leds/leds.h   |   1 -
 include/linux/genhd.h |   4 +
 include/linux/leds.h  |   2 +
 7 files changed, 241 insertions(+), 1 deletion(-)
 create mode 100644 block/blk-ledtrig.c

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
