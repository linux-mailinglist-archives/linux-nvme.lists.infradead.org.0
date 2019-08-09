Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050AB86F7C
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 03:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+VrIBsnI5tQepEQ+Cg9d7T/4UGIhmekKB3yKHEWXag=; b=FEmL2brGi/YR2A
	Ik12fagc8qfrUXdducYcQVsnVbZbmgMLwQz0CE4coYIGi69agdlAYTHpoJJU7qMOWN8FqEmo9qa1v
	onm01Ppw6QABI8S2Z9Sey6BkoaQZhBTlzzHujP3azDiFxkb9cKXqkBDWAE8zwbW+GogZs4TBJRQTt
	OZlHPJo18bAUsSTNjnrhEGo/bcEuWwYMeyTHgu5Tq4hJzhqk5uj63zJtk3ryr9rQ3/nt4/+/ePnL4
	F7VLxfK6DRPBt1FHUAw4fYpE2kYtgqnOPVzi81bl4WwXxHn+EtpEb7lpoYbpOO/CQ4tcC/TwMS9Fg
	s9M+bvZCz9d7O6nE26ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvuAY-0008Vc-Mj; Fri, 09 Aug 2019 01:58:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvuAR-0008VI-2x
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 01:58:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id p17so96705178wrf.11
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 18:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kGxztj3NnBFpv27S84plIbdQ7EM/Lf6akhP1bIaC/w4=;
 b=mQ4xP84vpF8EUZwrtRI9uuHlaj1I5SxJwYOmbjy+4FrqQm6Yx279O5HSCF97LZIo6c
 zp4YXDV3NWRxo7q9iPOBq8xlBsbEVZtdPFKQGRpqMaWz9XeSN/pWMTQQVs7x8mvkc8sy
 Td25zZfmenZa+rUik8S3IluBVprUMSFMy9+N668PArNkmHh/ZaTV0705xII0dSSV02Hw
 VbzFTAaT933Xl4MvTcYrh/7iF9TWHSx1vjvcZxC7534vkkqLCgVZ4/7lSn91t0mjGTxQ
 CQnsThroq24ZZVRbeWBBXH8QvUU1QKFtAjoHh08Jq/rAYyHaR2w2k1yWhTTywSr0oP4r
 tcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kGxztj3NnBFpv27S84plIbdQ7EM/Lf6akhP1bIaC/w4=;
 b=QNEWrG9GRxVhvBM8S01ZyIl1Ei2n/nVA50tCdUvTsgSdUIbnKxo2uSDLF8xZqveWGL
 V0kz4LSU/NctXLLnUiQ8yz+NDhwWZrcnDnCsfYg1MgBkVgiULfLgSrV0/VMum6kWAfZ6
 lRluqwIHksg3rIRCx3h1BGuzav51bV61Jj68Hzfe2t+Q4w6nvDB+g3BYZL5DamrCXfZs
 JIfKKnRQyicmVU6GLzYrtFOQ/KrXcj0ow1EMMWkw35gmRrdvghyMz5XkQ62XbD0T+s66
 PPV22c7YLE7amPla4b11Coz2mpT8opiWe7hyNSpfj4bsn4KEB7+xTIqilmzZxkn07aTr
 q13A==
X-Gm-Message-State: APjAAAURHuMrQi7NZc1HcY3kziQznYLP8X6UcdYO1QkTXqRKPTqhr1TF
 zPVjBqyIZIfXeMV+Ofe1prhG3D2I8MnyyTlFYi0=
X-Google-Smtp-Source: APXvYqzUw4NJMeAG/HhSnG6a2gCAISQW747RnFFV6+JL+kRvFTlNq63KtndtKfGNNF8XhXJWjdSw6lZIfKsc6QH9gYI=
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr2332586wrs.200.1565315884514; 
 Thu, 08 Aug 2019 18:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190808232536.4258-1-sagi@grimberg.me>
 <20190808232536.4258-3-sagi@grimberg.me>
In-Reply-To: <20190808232536.4258-3-sagi@grimberg.me>
From: Keith Busch <keith.busch@gmail.com>
Date: Thu, 8 Aug 2019 19:57:53 -0600
Message-ID: <CAOSXXT4HByc7QXdUrfGgYB93jDRKsFETUsYxw7LL7=AEsOmipQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] nvme: return a proper errno for sync commands
 failure
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_185807_157067_7BFFCF06 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 5:25 PM Sagi Grimberg <sagi@grimberg.me> wrote:
> callers should not rely on raw nvme status, instead return
> is more appropriate errno that relates to blk_status_t.

We can't readily return a negative value if the controller did provide
a real response. There are a lot of driver assumptions that a return <
0 to nvme_submit_sync_cmd() means the controller didn't provide a
response, and we should abort initialization, and >= 0 is a command
status returned from a responsive controller. I don't think there's
any driver use for specific nvme statuses, though, so returning >= 0
blk_sts_t is probably okay.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
