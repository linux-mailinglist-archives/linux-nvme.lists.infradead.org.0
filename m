Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7C71F5F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0L9JNgfoy1uBRwGCtZ5Oryefhi/Sm5fJ315rvepgVVg=; b=Vp+
	Zhv7MDJjqQB+io5N/0qeyyPi8BAKXJEARDKJDuFfT44OIg7JvDBFI0VoOxn3r9V9Z8OjhscA/dDwK
	p15/rNagj1X5LUuvbBsJXIvlF31Y0MqnHv9GtXeF7mqh3TUoEZUgiykIV5jusm2sSkNlzJpSG4DDV
	2QiKK06QF064lTq6Vz2jYHDeZTiIYAtuWJMERxK8cNQ72jugNGM12sVheMRq7u1oJ5+hHgmZQZQTF
	UYpRAAOd5R+WPQoTtJhMUn/2lR4tIJdrxP9IbJQUrUafik4D60OlqOnsNPWJ+v9RdCRIkEWTGx3TH
	yu2leOWzcxrZWdfjwMDn8LKJ0BPxlZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpze8-0002Ui-DS; Tue, 23 Jul 2019 18:36:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzdz-0002UQ-Hs
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so19558706pfp.7
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HsSEHTwi//qOixKaMwaFd4CJmSQ7xyDSxJH9Cih0jd4=;
 b=hfrcB59eDc2jb8LGTBWVVS9/LBbP6ySlRfqnImfVMY6UGSjz3gUsMO92QFB57SC0BR
 6+Y3XEYIGBPWP/+VZjALxZ3Sx0uTuqmM7U8EHrgkSvN3fJ3R3o/ysR1Y8Bp5CfMjj/wF
 OoUCG4qcQziJg9xQgRyiNiiw6YSv2U8KNNB6mZ7NO6wKQEL7xnH7ZIsmLBwQydEGow3E
 HrSZpsjgt3aD/pSDD5qKy989Ztuqa/4PbfOuwWbjKuRRfep78gYKqZC/6GS5HZNIU9Yh
 3wRI8uqQQu3qiCnQ44VRnV6PBhCpRPpCPuVQHZ6234JSbikhttZSV2H1QVeqgY7bJpcX
 OBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HsSEHTwi//qOixKaMwaFd4CJmSQ7xyDSxJH9Cih0jd4=;
 b=blENVXlj7cwrQ50DILFkNDRlNDY/wIRxgFt/zb2W24LZjRfxUArZn9Hn2F+MvdEr8P
 iPaxvEXIMXbtB4CzTUbQw9pxLjXjMLmo8o/qWm/tl4SDPJShFtm/jRs+nZgvUGXSkSa9
 ReG7dxxOMBxAfTh8QLXxqekOJ66osTmrnVdXCKpmhJfH1XJP8Xyb0LW0/OL5JpWNWtsO
 h4qYu7lJyrjybXpwEwVEOqq+8DvghhttyJrEl6QdTCajcPTIbM2Qoz4gZZvGIyJ1CzFO
 JXSjCT+QyAPnwSPWJPp5GKXI+GSD+mTsoy4HvAmeUi/+GxmaRj09XUrV8bqWm8zPGP+s
 w/uw==
X-Gm-Message-State: APjAAAWIdyti3+wT/HRzekXQ1k1VjyhQbFYBuor7bhB28tLKhTdo/Tdd
 14WM/6sngamJVXs+L0TKRRQqz/i4dMU=
X-Google-Smtp-Source: APXvYqwjSdHgJsNqjMup4a67gT8EB+HKzKXyNI6k0UwA/I9WateksjEve6Q/QLMtc6AUk8CBXF3L/g==
X-Received: by 2002:a17:90a:4f0e:: with SMTP id
 p14mr80867962pjh.40.1563906970505; 
 Tue, 23 Jul 2019 11:36:10 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:09 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/5] nvme-cli: lnvm: introduce chunk-log command
Date: Wed, 24 Jul 2019 03:35:56 +0900
Message-Id: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113611_591165_A82475AE 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

This series introduces a "chunk-log" subcommand for lnvm extension
plugin.  This command will send a get-log page NVMe admin command to the
given namespace which is for OCSSD.  We just can use nvme get-log
command with log id, but this subcommand is much more easier to use
because it gives parameters.

liblightnvm also provides nvm_cmd rprt_all command to retrieve this
information, but nvme-cli can do it also.  If you have something else
for this, please let me know.

This series also holds few clean-ups for the existing codes.

The last patch is introducing alias command name "geometry" for the
id-ns subcommand.

Please reivew.

Thanks!

Minwoo Im (5):
  lnvm: make data_len to sizeof() instead of magic number
  lnvm: export lnvm_get_identity
  lnvm: add chunk_info log page structure
  lnvm: introduce chunk-log command for chunk info
  lnvm: introduce alias geometry for id-ns for lnvm

 nvme-lightnvm.c          | 41 +++++++++++++++++++-
 nvme-lightnvm.h          | 17 ++++++++
 plugins/lnvm/lnvm-nvme.c | 84 ++++++++++++++++++++++++++++++++++++++++
 plugins/lnvm/lnvm-nvme.h |  3 +-
 4 files changed, 142 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
