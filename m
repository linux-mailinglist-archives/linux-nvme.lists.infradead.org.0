Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257E61C65A8
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 03:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xetzG/Ndk9yUMc/Se7AZOA5eufIE0G3SzfVX43BwURw=; b=sBvzCM7nAJGtda
	qXtyz5dOne8CZdIvz/J/T4p2A44CW2Tbs+ymJSs59xygmPigRFA9s2Sgj1i7kPjyjO1bz7ilTLLdG
	mKZFIBSERDeHelqZklAfSDAOT0P1u7pCjg0UjBhto+3XA4o5L5YhFSylBZO5iJOp7D0zf39WWlVV4
	krRARPmQfP8RF8RNzCPBwOvpW6a9meksyjocmnOplkuQnznUnRasOwWbGaMt2DKXsMt70aPEYfrFe
	/z7+X68wDq9ynFdGdV+z1lx+F907ohLEjYteCqY68JusswZhY8nKOFZ8wBBTfqkRukErcou9tda0o
	wPfc0UOLG+/VT72/MRtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW99P-0002BI-3f; Wed, 06 May 2020 01:47:07 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW99K-0002A2-Np
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 01:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588729622; x=1620265622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3bIe3YOIIKndtOg+QXmimKV2cYNojBa8rcrJHD8NXzY=;
 b=HNp7zGMpFBipM4y/Z1xrE9HKjbXT4jBdlVh3wpZjFZi369TiUadsLPnI
 DeMZ+dmGMggHogt/1q7xZYh3nC701l8s2WQzIeT570GYMcygUMGIrzVoM
 45Ghgo24o0FUixk07s6po3giss9mn0kDglLhpQuKYw1Gzu4BiGJ7s7Hjk
 YjeXluAo0WAwkwojELSunvMi7Mxi+U3Zsi9NHk5cidjlUOkzne2f03OeR
 2Ej0+EM9ZFJjk4swHWmHf4VDmIzxF0VU/TIzLBTbMbtr34s9oVHNRICvQ
 y42P6bRbwf2jXzfFdq6T+/yZCcbMBStEnIoIw1xOBiOzbun/tztVKoNW9 w==;
IronPort-SDR: 8DkLqVf/aPgPkkwTUO5R+6RkJfuGJS9Uzq78melo/EK1i/IZrj1UxAyPRkHUnNaMI9AQuWOG+U
 E1v6sqqbZ2jAeWIs7qNDKqS7BdePVfz1E+7bUEYfKXwAPq7L2VRoPZuEuWPiN//qANIfL4mXCP
 drmMSdEXua/jzFRew413Gd1yoSrjHCkBEyLEi/9vfw4fNXQ+YqECYSyfw2aDFH2WdXjnba2Eg6
 iuin0AyssW0rL/XOKHmYSooFG205SPpzNO2OnkmaLrif4QsDP7TOft+xSYUjbF72gZ6IXLgAfO
 ZG4=
X-IronPort-AV: E=Sophos;i="5.73,357,1583164800"; d="scan'208";a="245859802"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 06 May 2020 09:46:58 +0800
IronPort-SDR: e4zq5YrLohpGpgiOnYy0onGfNOz1XQEAZV8ymnWBMptIgtWLv8Np9RMHDCe8MzuXpiQJwu5Snb
 ecGyIWFB3w6NMREfnsqHKmPOkqwGbjNA4=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 18:36:53 -0700
IronPort-SDR: QEi81sgdPqDYnmgybHLjpKydx/chjcKh9bme7N1Ud5fE6BBCzG+kjqZM7+9EGcB24q9SnmXHjz
 eMpA6cXgnG5g==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 05 May 2020 18:46:58 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 0/3] nvmet: add target ns revalidate support
Date: Tue,  5 May 2020 18:46:26 -0700
Message-Id: <20200506014629.39509-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_184702_820656_611C0602 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph/Sagi,

As per previous discussion on the ns-revalidation thread, this patch
series adds a new per namespace configfs attribute so that AEN check
can be triggered from the userspace with appropriate notification
tool(s).

P.S. I've dropped the previous version numbering since first patch is
already in the tree now.

As always test log at the end for reference.

Regards,
Chaitanya

Chaitanya Kulkarni (3):
  nvmet: add helper to revalidate bdev and file ns
  nvmet: on ns size change generate AEN from configfs
  nvmet: add async event tracing support

 drivers/nvme/target/admin-cmd.c   |  5 +----
 drivers/nvme/target/configfs.c    | 22 ++++++++++++++++++++++
 drivers/nvme/target/core.c        | 10 ++++++++++
 drivers/nvme/target/io-cmd-bdev.c |  6 +++++-
 drivers/nvme/target/io-cmd-file.c | 11 ++++++++---
 drivers/nvme/target/nvmet.h       |  5 +++--
 drivers/nvme/target/trace.h       | 28 ++++++++++++++++++++++++++++
 7 files changed, 77 insertions(+), 10 deletions(-)

1. blktest for 100 NS, 10 ns per subsys :-
. tests/nvme/rc

DESCRIPTION="Test target namespace resize AEN"

requires() {
	_have_program nvme && _have_modules nvme-loop nvmet && _have_configfs
}

test() {
	echo "Running ${TEST_NAME}"

	local port
	local file_path
	local nr_ss=10
	local nr_ns=10
	local orig_size=10G
	local new_size=1G
	local subsys_name="blktests-subsystem"

	_setup_nvmet
	port="$(_create_nvmet_port "loop")"
	for ((i = 1; i <= nr_ss; i++)); do
		truncate -s ${orig_size} "${TMPDIR}/img${i}1"
		_create_nvmet_subsystem "${subsys_name}${i}" "${TMPDIR}/img${i}1" \
			"91fdba0d-f87b-4c25-b80f-db7be1418b9e"
		for ((j = 2; j <= nr_ns; j++)); do
			file_path="${TMPDIR}/img${i}${j}"

			truncate -s ${orig_size} "${file_path}"
			_create_nvmet_ns "${subsys_name}${i}" "${j}" "${file_path}"
		done
		_add_nvmet_subsys_to_port "${port}" "${subsys_name}${i}"
		nvme connect -t loop -n "${subsys_name}${i}"
	done

	sleep 1

	echo "Original Size of NVMeOF host device:-"
	for i in `nvme list | grep "Linux" | tr -s ' ' ' ' | cut -f 1 -d ' ' | sort`; do
		lsblk ${i} --output NAME,SIZE | grep -v NAME | sort
	done
	for ((i = nr_ss; i >= 1; i--)); do
		for ((j = nr_ns; j >= 1; j--)); do
			file_path="${TMPDIR}/img${i}${j}"
			subsys_path="${NVMET_CFS}"/subsystems/"${subsys_name}${i}"

			truncate -s ${new_size} ${file_path}
			echo 1 > "${subsys_path}"/namespaces/${j}/resize_check 
			sleep 0.25
		done
	done
	echo "New Size of NVMeOF host device:-"
	for i in `nvme list | grep "Linux" | tr -s ' ' ' ' | cut -f 1 -d ' ' | sort`; do
		lsblk ${i} --output NAME,SIZE | grep -v NAME
	done

	for ((i = nr_ss; i >= 1; i--)); do
		nvme disconnect -n "${subsys_name}${i}"
		_remove_nvmet_subsystem_from_port "${port}" "${subsys_name}${i}"
		for ((j = nr_ns; j > 1; j--)); do
			file_path="${TMPDIR}/img${i}${j}"

			_remove_nvmet_ns "${subsys_name}${i}" $j
			rm ${file_path}
		done
		_remove_nvmet_subsystem "${subsys_name}${i}"
		rm "${TMPDIR}/img${i}1"
	done

	_remove_nvmet_port "${port}"

	echo "Test complete"
}

# ./check tests/nvme/035
nvme/035 (Test target namespace resize AEN)                  [passed]

2. AEN trace events from host and target :-
 
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme10: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme9: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme8: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme7: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme6: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme5: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme4: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme3: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme2: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvmet_async_event: nvmet1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
nvme_async_event: nvme1: NVME_AEN=0x000000 [NVME_AER_NOTICE_NS_CHANGED]
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
